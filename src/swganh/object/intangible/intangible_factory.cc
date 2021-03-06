// This file is part of SWGANH which is released under the MIT license.
// See file LICENSE or go to http://swganh.com/LICENSE

#include "swganh/object/intangible/intangible_factory.h"

#include <sstream>

#include <cppconn/exception.h>
#include <cppconn/connection.h>
#include <cppconn/resultset.h>
#include <cppconn/statement.h>
#include <cppconn/prepared_statement.h>
#include <cppconn/sqlstring.h>
#include "anh/logger.h"

#include "anh/database/database_manager.h"
#include "swganh/object/intangible/intangible.h"
#include "swganh/object/exception.h"
#include "swganh/simulation/simulation_service_interface.h"

using namespace std;
using namespace anh::database;
using namespace swganh::object;
using namespace swganh::object::intangible;
using namespace swganh::simulation;

IntangibleFactory::IntangibleFactory(DatabaseManagerInterface* db_manager,
                             anh::EventDispatcher* event_dispatcher)
    : ObjectFactory(db_manager, event_dispatcher)
{
}
void IntangibleFactory::LoadTemplates()
{
    try {

        auto conn = db_manager_->getConnection("galaxy");
        auto statement = conn->prepareStatement("CALL sp_GetIntangibleTemplates();");
        auto result = unique_ptr<sql::ResultSet>(statement->executeQuery());

        while (result->next())
        {
            auto intangible = make_shared<Intangible>();
            
			intangible->SetStfDetail(result->getString(13), result->getString(14));
            
            intangible_templates_.insert(make_pair(intangible->GetTemplate(), move(intangible)));
        } while (statement->getMoreResults());
    }
    catch(sql::SQLException &e)
    {
        LOG(error) << "SQLException at " << __FILE__ << " (" << __LINE__ << ": " << __FUNCTION__ << ")";
        LOG(error) << "MySQL Error: (" << e.getErrorCode() << ": " << e.getSQLState() << ") " << e.what();
    }
}
unordered_map<string, shared_ptr<Intangible>>::iterator IntangibleFactory::GetTemplateIter_(const string& template_name)
{
    auto found = find_if(begin(intangible_templates_), end(intangible_templates_), [&template_name] (pair<string, shared_ptr<Intangible>> template_pair) {
        return template_name == template_pair.first;
    });
    return found;
}
bool IntangibleFactory::HasTemplate(const string& template_name)
{
    return GetTemplateIter_(template_name) != end(intangible_templates_);
}

void IntangibleFactory::PersistObject(const shared_ptr<Object>& object)
{
    if (object->IsDirty() && object->GetType() == Intangible::type)
    {
        try 
        {
            auto conn = db_manager_->getConnection("galaxy");
            auto statement = conn->prepareStatement("CALL sp_PersistIntangible(?,?);");
            
            auto intangible = make_shared<Intangible>();
            statement->setString(1, intangible->GetStfDetailFile());
            statement->setString(2, intangible->GetStfDetailString());
            statement->execute();
        }
            catch(sql::SQLException &e)
        {
            LOG(error) << "SQLException at " << __FILE__ << " (" << __LINE__ << ": " << __FUNCTION__ << ")";
            LOG(error) << "MySQL Error: (" << e.getErrorCode() << ": " << e.getSQLState() << ") " << e.what();
        }
    }
}

void IntangibleFactory::DeleteObjectFromStorage(const shared_ptr<Object>& object)
{
    try 
    {
        auto conn = db_manager_->getConnection("galaxy");
        auto statement = conn->prepareStatement("CALL sp_DeleteIntangible(?);");
        statement->setUInt64(1, object->GetObjectId());
        statement->execute();
    }
        catch(sql::SQLException &e)
    {
        LOG(error) << "SQLException at " << __FILE__ << " (" << __LINE__ << ": " << __FUNCTION__ << ")";
        LOG(error) << "MySQL Error: (" << e.getErrorCode() << ": " << e.getSQLState() << ") " << e.what();
    }
}

shared_ptr<Object> IntangibleFactory::CreateObjectFromStorage(uint64_t object_id)
{
    auto intangible = make_shared<Intangible>();
    intangible->SetObjectId(object_id);
    try {
        auto conn = db_manager_->getConnection("galaxy");
        auto statement = shared_ptr<sql::Statement>(conn->createStatement());
        
        stringstream ss;
        ss << "CALL sp_GetIntangible(" << object_id << ");";

        auto result = shared_ptr<sql::ResultSet>(statement->executeQuery(ss.str()));
        CreateBaseObjectFromStorage(intangible, result);
        if (statement->getMoreResults())
        {
            result.reset(statement->getResultSet());
            while (result->next())
            {
                intangible->SetStfDetail(result->getString("stf_detail_file"),
                                         result->getString("stf_detail_string"));
            }
        }
    }
    catch(sql::SQLException &e)
    {
        LOG(error) << "SQLException at " << __FILE__ << " (" << __LINE__ << ": " << __FUNCTION__ << ")";
        LOG(error) << "MySQL Error: (" << e.getErrorCode() << ": " << e.getSQLState() << ") " << e.what();
    }
    return intangible;
}

shared_ptr<Object> IntangibleFactory::CreateObjectFromTemplate(const string& template_name)
{
    auto object = make_shared<Intangible>();
    auto found = GetTemplateIter_(template_name);
    if (found != end(intangible_templates_))
    {
        object = found->second;
    }
    else
    {
        throw swganh::object::InvalidObjectTemplate("Template Not Found: " + template_name);
    }
    
    return object;
}

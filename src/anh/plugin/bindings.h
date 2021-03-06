// This file is part of SWGANH which is released under the MIT license.
// See file LICENSE or go to http://swganh.com/LICENSE

#ifndef ANH_PLUGIN_BINDINGS_H_
#define ANH_PLUGIN_BINDINGS_H_

#include <cstdint>
#include <functional>
#include <memory>
#include <string>

#include <boost/program_options/options_description.hpp>

#include "anh/app/kernel_interface.h"

namespace anh {
namespace plugin {
    
struct ObjectParams {
    std::string name;
    anh::app::KernelInterface* kernel;
};

typedef std::function<void * (ObjectParams*)> ObjectCreator;
typedef void (*ObjectDestroyer)(void *);
typedef void (*ExitFunc)();
typedef ExitFunc (*InitFunc)(anh::app::KernelInterface*);
typedef void (*ConfigFunc)(boost::program_options::options_description&);

struct ObjectRegistration {
    anh::app::Version version;
    ObjectCreator CreateObject;
    ObjectDestroyer DestroyObject;
};

#ifdef WIN32
    #ifdef DLL_EXPORTS
        #define PLUGIN_API __declspec(dllexport)
    #else
        #define PLUGIN_API __declspec(dllimport)
    #endif
#else
    #define PLUGIN_API 
#endif

}}  // namespace anh::plugin

#endif  // ANH_PLUGIN_BINDINGS_H_

/*
 This file is part of SWGANH. For more information, visit http://swganh.com
 
 Copyright (c) 2006 - 2011 The SWG:ANH Team

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/

#ifndef SWGANH_CONNECTION_PROVIDERS_SESSION_PROVIDER_INTERFACE_H_
#define SWGANH_CONNECTION_PROVIDERS_SESSION_PROVIDER_INTERFACE_H_

#include <cstdint>

namespace swganh {
namespace connection {
namespace providers {

class SessionProviderInterface {
public:
    virtual ~SessionProviderInterface() {}

    virtual uint64_t GetPlayerId(uint32_t account_id) = 0;
    virtual uint32_t GetAccountId(uint64_t player_id) = 0;
    virtual bool CreateGameSession(uint64_t player_id, uint32_t session_id) = 0;
	virtual void EndGameSession(uint64_t player_id) = 0;
};

}}}  // namespace swganh::connection::providers

#endif  // SWGANH_CONNECTION_PROVIDERS_SESSION_PROVIDER_INTERFACE_H_

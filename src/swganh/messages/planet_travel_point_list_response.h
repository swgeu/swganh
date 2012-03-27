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

#ifndef SWGANH_MESSAGES_PLANET_TRAVEL_POINT_LIST_RESPONSE_H_
#define SWGANH_MESSAGES_PLANET_TRAVEL_POINT_LIST_RESPONSE_H_

#include <cstdint>
#include <algorithm>
#include <glm/glm.hpp>
#include <list>
#include <string>
#include "anh/byte_buffer.h"
#include "swganh/messages/base_swg_message.h"

namespace swganh {
namespace messages {

struct PlanetTravelPointListResponse : public swganh::messages::BaseSwgMessage<PlanetTravelPointListResponse> {
	static uint16_t opcount() { return 9; }
	static uint32_t opcode() { return 0x4D32541F; }
	
	std::string planet_name;
	std::list<std::string> location_names; // contains names of the starports and/or shuttleports
	std::list<glm::vec3> location_coordinates;
	std::list<uint32_t> location_tax_rates; // uncertain, possibly ticket prices minus a tax amount instead of just a tax amount
	std::list<uint8_t> location_starport_flags; // 0 = shuttleport, 1 = starport
	
	void onSerialize(anh::ByteBuffer& buffer) const {
		buffer.write(planet_name);
		buffer.write(location_names.size());
		std::for_each(location_names.begin(), location_names.end(), [&buffer] (std::string name) {
			buffer.write(name);
		});
		buffer.write(location_coordinates.size());
		std::for_each(location_coordinates.begin(), location_coordinates.end(), [&buffer] (glm::vec3 coordinate) {
			buffer.write(coordinate.x);
			buffer.write(coordinate.z);
			buffer.write(coordinate.y);
		});
		buffer.write(location_tax_rates.size());
		std::for_each(location_tax_rates.begin(), location_tax_rates.end(), [&buffer] (uint32_t tax_rate) {
			buffer.write(tax_rate);
		});
		buffer.write(location_starport_flags.size());
		std::for_each(location_starport_flags.begin(), location_starport_flags.end(), [&buffer] (uint8_t starport_flag) {
			buffer.write(starport_flag);
		});
	}

	void onDeserialize(anh::ByteBuffer buffer) {
		planet_name = buffer.read<std::string>();
		uint32_t location_names_count = buffer.read<uint32_t>();
		for (uint32_t i = 0; i < location_names_count; i++) {
			std::string name;
			name = buffer.read<std::string>();
			location_names.push_back(name);
		}
		uint32_t location_coordinates_count = buffer.read<uint32_t>();
		for (uint32_t i = 0; i < location_coordinates_count; i++) {
			glm::vec3 coordinate;
			coordinate.x = buffer.read<float>();
			coordinate.z = buffer.read<float>();
			coordinate.y = buffer.read<float>();
			location_coordinates.push_back(coordinate);
		}
		uint32_t location_tax_rates_count = buffer.read<uint32_t>();
		for (uint32_t i = 0; i < location_tax_rates_count; i++) {
			uint32_t tax_rate;
			tax_rate = buffer.read<uint32_t>();
			location_tax_rates.push_back(tax_rate);
		}
		uint32_t location_starport_flags_count = buffer.read<uint32_t>();
		for (uint32_t i = 0; i < location_starport_flags_count; i++) {
			uint8_t starport_flag;
			starport_flag = buffer.read<uint8_t>();
			location_starport_flags.push_back(starport_flag);
		}
	}
};

}} // namespace swganh::messages

#endif // SWGANH_MESSAGES_PLANET_TRAVEL_POINT_LIST_RESPONSE_H_
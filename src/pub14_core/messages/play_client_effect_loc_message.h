// This file is part of SWGANH which is released under the MIT license.
// See file LICENSE or go to http://swganh.com/LICENSE

#ifndef SWGANH_MESSAGES_PLAY_CLIENT_EFFECT_LOC_MESSAGE_H_
#define SWGANH_MESSAGES_PLAY_CLIENT_EFFECT_LOC_MESSAGE_H_

#include <cstdint>
#include <string>
#include <glm/glm.hpp>
#include "anh/byte_buffer.h"
#include "base_swg_message.h"

namespace swganh {
namespace messages {

    struct PlayClientEffectLocMessage : public BaseSwgMessage<PlayClientEffectLocMessage>
    {
    	static uint16_t Opcount() { return 8; }
    	static uint32_t Opcode() { return 0x02949E74; }

    	std::string client_effect_file; // e.g. "clienteffect/lambda_hover.cef"
    	std::string planet_name; // e.g. "naboo"
    	glm::vec3 location_coordinates;
    	uint64_t unknown1;
    	uint32_t unknown2;

    	void OnSerialize(anh::ByteBuffer& buffer) const
    	{
    		buffer.write(client_effect_file);
    		buffer.write(planet_name);
    		buffer.write(location_coordinates.x);
    		buffer.write(location_coordinates.z);
    		buffer.write(location_coordinates.y);
    		buffer.write(unknown1);
    		buffer.write(unknown2);
    	}

    	void OnDeserialize(anh::ByteBuffer buffer)
    	{
    		client_effect_file = buffer.read<std::string>();
    		planet_name = buffer.read<std::string>();
    		location_coordinates.x = buffer.read<float>();
    		location_coordinates.z = buffer.read<float>();
    		location_coordinates.y = buffer.read<float>();
    		unknown1 = buffer.read<uint64_t>();
    		unknown2 = buffer.read<uint32_t>();
    	}
    };

}} // namespace swganh::messages

#endif // SWGANH_MESSAGES_PLAY_CLIENT_EFFECT_LOC_MESSAGE_H_

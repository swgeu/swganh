// This file is part of SWGANH which is released under the MIT license.
// See file LICENSE or go to http://swganh.com/LICENSE

#ifndef SWGANH_MESSAGES_CONTROLLERS_SPATIAL_EMOTE_H_
#define SWGANH_MESSAGES_CONTROLLERS_SPATIAL_EMOTE_H_

#include <cstdint>
#include <string>
#include "anh/byte_buffer.h"

#include "swganh/messages/obj_controller_message.h"

namespace swganh {
namespace messages {
namespace controllers {

    class SpatialEmote : public ObjControllerMessage
    {
    public:
        explicit SpatialEmote(uint32_t controller_type = 0x0000000B)
            : ObjControllerMessage(controller_type, message_type())
            , target_id(0)
            , emote_id(0)
            , emote_flags(0)
        {}

        explicit SpatialEmote(ObjControllerMessage controller_message)
            : ObjControllerMessage(std::move(controller_message))
        {
            OnControllerDeserialize(std::move(data));
        }

        static uint32_t message_type() { return 0x0000012E; }
        
        uint64_t source_id;
        uint64_t target_id;
        uint32_t emote_id;
        uint8_t emote_flags;

        void OnControllerSerialize(anh::ByteBuffer& buffer) const
        {
            buffer.write(source_id);
            buffer.write(target_id);
            buffer.write(emote_id);
            buffer.write(emote_flags);
        }

        void OnControllerDeserialize(anh::ByteBuffer buffer)
        {
            source_id = buffer.read<uint64_t>();
            target_id = buffer.read<uint64_t>();
            emote_id = buffer.read<uint32_t>();
            emote_flags = buffer.read<uint8_t>();
        }
    };

}}}  // namespace swganh::messages::controllers

#endif  // SWGANH_MESSAGES_CONTROLLERS_SPATIAL_EMOTE_H_

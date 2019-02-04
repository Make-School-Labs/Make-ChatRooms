//
//  Message.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 2/3/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation


struct Message {
    let messageContent: String
    let senderUsername: String
//    let messageSender: MessageSender
    
    init(messageContent: String, senderUsername: String) {
        self.messageContent = messageContent
        self.senderUsername = senderUsername
//        self.messageSender = messageSender
    }
    
//    private enum CodingKeys: String,CodingKey {
//        case messageContent
//        case senderUsername
//        case messageSender
//    }
//
//    required convenience init(from decoder: Decoder) {
//        let container = try? decoder.container(keyedBy: CodingKeys.self)
//        let messageContent = try? container?.decode(String.self, forKey: .messageContent)
////        let senderUsername = try? container?.decode(MessageSender.self, forKey: .senderUsername)
//
//        let messageSender = try? container?.decodeIfPresent(String.self, forKey: .messageSender)
//        self.init(messageContent: messageContent as! String, senderUsername: senderUsername as! String, messageSender: nil)
//    }
}

//
//  Message.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 2/3/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation


struct Message: Codable {
    let messageContent: String
    let senderUsername: String
    let messageSender: Bool
    
    init(messageContent: String, senderUsername: String, messageSender: Bool) {
        self.messageContent = messageContent
        self.senderUsername = senderUsername
        self.messageSender = messageSender
    }
    
//    private enum CodingKeys: String,CodingKey {
//        case messageContent
//        case senderUsername
//    }
//
//    required convenience init(from decoder: Decoder) {
//        let container = try? decoder.container(keyedBy: CodingKeys.self)
//        let messageContent = try? container?.decode(String.self, forKey: .messageContent)
//        let senderUsername = try? container?.decode(String.self, forKey: .senderUsername)
//        self.init(messageContent: messageContent as! String, senderUsername: senderUsername as! String)
//    }
//
//    func encode(to encoder: Encoder) {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        let messageContent = container.encode(String.self, forKey: .messageContent)
//
//    }
}

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
    let messageSender: MessageSender
    
    init(messageContent: String, senderUsername: String, messageSender: MessageSender) {
        self.messageContent = messageContent
        self.senderUsername = senderUsername
        self.messageSender = messageSender
    }
}

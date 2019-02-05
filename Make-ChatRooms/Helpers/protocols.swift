//
//  protocols.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/30/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation

class MessageSenderToggle {
    static var messageSender = true
}

protocol RoomTransition: class {
    func transitionToRoom()
}

protocol ChatRoomDelegate: class {
    func recievedMessage(message: Message)
}

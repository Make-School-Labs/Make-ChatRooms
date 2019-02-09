//
//  protocols.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/30/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation

protocol RoomTransition: class {
    func transitionToRoom()
}

protocol ChatRoomDelegate: class {
    func recievedMessage(message: Message)
}

protocol UsernameDelegate: class {
    func usernameCollision()
}

protocol MessageInputDelegate: class {
    func sendWasTapped(message: String)
}

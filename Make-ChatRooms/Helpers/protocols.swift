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

protocol JoinedRoom : class { // Specifying that only classes will be conform to the protocol
    func dismissModalView()
}

protocol ChatRoomDelegate: class {
    func recievedMessage(message: Message)
}

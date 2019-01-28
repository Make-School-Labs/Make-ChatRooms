//
//  User.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation


class User: NSObject {
    var username: String
    var activeRooms: [Room]? = [Room]()
    
    init(username: String, activeRooms: [Room]?) {
        self.username = username
        self.activeRooms = activeRooms
    }
}

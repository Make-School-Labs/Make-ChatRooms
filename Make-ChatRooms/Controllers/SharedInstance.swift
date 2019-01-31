//
//  SharedInstance.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/30/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation


class Rooms {
    static var shared = Rooms()
    var rooms = [Room]()
}

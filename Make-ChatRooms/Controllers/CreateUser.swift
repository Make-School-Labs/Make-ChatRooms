//
//  CreateUserViewController.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/30/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class CreateUser: UIViewController, RoomTransition {
    func transitionToRoom() {
        let roomTableView = RoomsTableView()
        self.navigationController?.pushViewController(roomTableView, animated: true)
        print("Transitioning to room")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let createUserView = CreateUserView()
        createUserView.frame = self.view.bounds
        self.view.addSubview(createUserView)
        createUserView.delegate = self
    }
}

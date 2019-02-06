//
//  CreateUserViewController.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/30/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class CreateUser: UIViewController, RoomTransition, UsernameDelegate {
     let chatRoom = ChatRoom()
    
    func usernameCollision() {
        let usernameAlert = UIAlertController(title: "Different Username Please", message: "The username you have chosen is already taken by somebody currently connected.", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Try Again", style: .cancel, handler: nil)
        usernameAlert.addAction(cancelAction)
        self.present(usernameAlert, animated: true, completion: nil)
    }
    
   
    func transitionToRoom() {
        let roomTableView = RoomsTableView()
        
//        self.navigationController?.pushViewController(roomTableView, animated: true)
        print("Transitioning to room")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let createUserView = CreateUserView()
        createUserView.frame = self.view.bounds
        self.view.addSubview(createUserView)
        createUserView.delegate = self
        chatRoom.usernameDelegate = self
    }
}

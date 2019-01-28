//
//  CreateUserViewController.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit


class CreateUserViewController: UIViewController {
    // What is the purpose of this screen? Here we are going to get the username that the user is going throughout the lifetime of the application we then use this value to denote the current user
    
    let usernameText: UITextField = {
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        
        let textField = UITextField(frame: CGRect(x: width / 2 , y: height / 2, width: 150, height: 50))
        textField.backgroundColor = UIColor.gray
        return textField
    }()
    
    let joinButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        
        // MARK TODO: Add string interpolation to say the username when user joins the chat
        button.backgroundColor = UIColor.blue
        button.setTitle("Join Chat", for: .normal)
        button.addTarget(self, action: #selector(joinChat), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = "Hello"
        print("Instantiating view")
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(usernameText)
        self.view.addSubview(joinButton)
    }
    
    @objc func joinChat(sender: UIButton) {
        guard let username = usernameText.text else {return}
        let user = User(username: username, activeRooms: nil)
        print(user.username)
    }
}

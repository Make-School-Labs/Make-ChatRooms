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
        let textField = UITextField()
        return textField
    }()
    
    let joinButton: UIButton = {
        let button = UIButton()
        
        // MARK TODO: Add string interpolation to say the username when user joins the chat
        button.titleLabel?.text = "Join Chat"
        button.backgroundColor = UIColor.red
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Instantiating view")
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(usernameText)
        self.view.addSubview(joinButton)
    }
}

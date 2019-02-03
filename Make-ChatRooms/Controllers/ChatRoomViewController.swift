//
//  ChatRoomViewController.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 2/3/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class ChatRoomViewController: UIViewController {
    let tableView = UITableView()
    let messageInputBar = MessageInputView()
    
    var messages = [Message]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
}

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
    let chatRoom = ChatRoom()
    // Instantiate the message input view that adds itself as a subview
    let messageInputBar = MessageInputView()
    
    var messages = [Message]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
}



//MARK - Message Input Bar
extension ChatRoomViewController: MessageInputDelegate {
    func sendWasTapped(message: String) {
        print("Sent Message \(message)")
        chatRoom.sendMessage(message: message)
    }
}

//extension ChatRoomViewController: ChatRoomDelegate {
//
//    func recievedMessage(message: Message) {
//        print("Recieved Message \(message.message)")
//        insertNewMessageCell(message)
//    }
//
//}

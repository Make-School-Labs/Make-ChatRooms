//
//  CreateRoomModalViewController.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class CreateRoomModalViewController: UIViewController {
    let chatRoom = ChatRoom()
    
    lazy var closeModalViewButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 30, y: 30, width: 30, height: 30))
        button.addTarget(self, action: #selector(closeModalView), for: .touchUpInside)
        button.backgroundColor = UIColor.red
        return button
    }()
    
    lazy var roomName:UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 50, width: 300, height: 40))
        textField.placeholder = "Enter Room Name"
        return textField
    }()
    
    lazy var joinButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 50, y: 100, width: 100, height: 50))
        button.titleLabel?.text = "Join Room"
        button.backgroundColor = UIColor.darkText
        button.addTarget(self, action: #selector(joinRoom), for: .touchUpInside)
        return button
    }()
    
    lazy var modalView: UIView = {
        let modalView = UIView(frame: CGRect(x: 70, y: 278, width: 300, height: 170))
        modalView.backgroundColor = UIColor.gray
        modalView.addSubview(self.roomName)
        modalView.addSubview(self.joinButton)
        modalView.addSubview(closeModalViewButton)
        
        return modalView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clear
        self.view.addSubview(modalView)
        showAnimate()
    }
    
    @objc func joinRoom(sender: UIButton) {
        guard let roomName = roomName.text else {return}
        print("Name of the room user has chosen \(roomName)")
        var room = Room(roomName: roomName)
        chatRoom.room = room
        chatRoom.joinRoom()
    }
    
    @objc func closeModalView() {
        self.dismiss(animated: true) {
            print("Dismissed modal view")
        }
    }
    
    func showAnimate() {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25) {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    }
}

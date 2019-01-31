//
//  ModalView.swift
//  
//
//  Created by Matthew Harrilal on 1/30/19.
//

import Foundation
import UIKit

class ModalView: UIView {
    @IBOutlet var modalView: UIView!
    let chatRoom = ChatRoom()
    weak var delegate: JoinedRoom?
    
    @IBOutlet weak var roomNameTextField: UITextField!
    
    @IBAction func joinRoomButton(_ sender: UIButton) {
        guard let roomName = roomNameTextField.text else {return}
        
        // Once we have the room name, how can we proceed?
        let room = Room(roomName: roomName)
        chatRoom.room = room
        chatRoom.joinRoom()
        delegate?.dismissModalView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("ModalView", owner: self, options: nil)
        modalView.backgroundColor = UIColor.purple
        addSubview(modalView)
    }
    
}

//
//  ChatLogViewController.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class ChatLogCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    var roomName: String = "" {
        didSet {
            self.navigationItem.title = roomName
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

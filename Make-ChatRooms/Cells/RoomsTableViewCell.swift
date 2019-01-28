//
//  RoomsCollectionViewCell.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class RoomsTableViewCell: UITableViewCell {
    // Represents our Room Collection View Cell
    
    let roomName: UILabel = {
        let roomNameLabel = UILabel()
        roomNameLabel.text =  "Test Room"
        
        return roomNameLabel
    }() // Invoke operation to instantiate uitext field
    
    let recentMessageLabel: UILabel  = {
        let messageLabel = UILabel()
        messageLabel.text = "Test Recent Message Sent"
        return messageLabel
    }()
    

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureViews()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("required intializer has not been implemented")
    }
    
    func configureViews() {
        print("Being configured")
        self.contentView.addSubview(roomName)
        
        
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-82-[v0]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": dividerLineView]))
//
//
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": dividerLineView]))
        
        roomName.frame = self.contentView.bounds
        //addSubview(roomName)
        
    }
}

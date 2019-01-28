//
//  RoomsCollectionViewCell.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class RoomsCollectionViewCell: UITableViewCell {
    // Represents our Room Collection View Cell
    
    let roomName: UITextField = {
        let roomNameTextField = UITextField()
        roomNameTextField.text =  "Test Room"
        
        return roomNameTextField
    }() // Invoke operation to instantiate uitext field
    
    let dividerLineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        
        return view
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
        self.contentView.addSubview(dividerLineView)
//        dividerLineView.translatesAutoresizingMaskIntoConstraints = false
        
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-82-[v0]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": dividerLineView]))
        
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": dividerLineView]))
        
        roomName.frame = self.contentView.bounds
        //addSubview(roomName)
        
    }
}

//
//  RoomsCollectionViewCell.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class RoomsCollectionViewCell: UICollectionViewCell {
    // Represents our Room Collection View Cell
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("required intializer has not been implemented")
    }
    
    func configureViews() {
        print("Being configured")
        backgroundColor = UIColor.red
    }
}

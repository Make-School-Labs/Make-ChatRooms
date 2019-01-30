//
//  CreateUserView.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/30/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class CreateUserView: UIView {
    // View belonging to when the user signs up
   
    @IBOutlet var createUserView: UIView!
    @IBOutlet weak var makeSchoolLogoImageView: UIImageView!
    @IBOutlet weak var userNameTextField: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureImageView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func joinChatRoomButton(_ sender: Any) {
        guard let username = userNameTextField.text else {return}
    }
    
    private func configureImageView() {
        self.makeSchoolLogoImageView.image = UIImage(named: "MakeSchoolLogo")
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("CreateUserView", owner: self, options: nil)
        addSubview(self)
    }
}

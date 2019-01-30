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
    
    @IBOutlet weak var roomNameTextField: UITextField!
    
    @IBAction func joinRoomButton(_ sender: UIButton) {
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
        modalView.backgroundColor = UIColor.clear
        addSubview(modalView)
    }
}

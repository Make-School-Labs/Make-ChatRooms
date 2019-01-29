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
    
    lazy var modalView: UIView = {
        let width = self.view.frame.width
        let height = self.view.frame.height
        let modalView = UIView(frame: CGRect(x: 50, y: 50, width: width / 2, height: height / 2))
        modalView.backgroundColor = UIColor.red
        return modalView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clear
        self.view.addSubview(modalView)
//        showAnimate()
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

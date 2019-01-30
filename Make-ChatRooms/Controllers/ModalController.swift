//
//  ModalController.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/30/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit


class ModalController: UIViewController {
    override func viewDidLoad() {
        let modalView = ModalView()
        modalView.frame = self.view.bounds
        self.view.addSubview(modalView)
        self.view.backgroundColor = UIColor.clear
    }
}

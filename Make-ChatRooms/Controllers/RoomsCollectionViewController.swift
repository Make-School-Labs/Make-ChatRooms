//
//  ViewController.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import UIKit

class RoomsTableViewController: UITableViewController {
    
    let cellIdentifier = "cellIdentifier"
    
    
    // MARK TODO: Can these uielements be extracted to a helper file?
    lazy var createRoomButton: UIBarButtonItem = {
//        let createRoomButton = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        createRoomButton.addTarget(self, action: #selector(createRoom), for: .touchUpInside)
//        createRoomButton.titleLabel?.text = "Create Room"
        let createJoinRoomButton = UIBarButtonItem(title: "Create Room", style: .plain, target: self, action: #selector(createRoom(sender:)))
        return createJoinRoomButton
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView?.backgroundColor = UIColor.white
        tableView?.alwaysBounceVertical = true
        self.navigationItem.title = "Active Rooms"
//        let rightBarButton = UIBarButtonItem(customView: createRoomButton)
        self.navigationItem.rightBarButtonItem = createRoomButton
        
        tableView.register(RoomsTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // MARK: TODO REPRESENTING THE NUMBER OF ACTIVE ROOMS THAT THE USER IS IN
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let layout = UICollectionViewLayout()
        print("Room being selected")
        let chatLogCollectionVC = ChatLogCollectionViewController(collectionViewLayout: layout)
        
        // MARK: TODO THE ACTUAL ROOM THAT THE USER TAPS ON
        let currentRoomName = "Test Room"
        
        chatLogCollectionVC.roomName = currentRoomName
        self.navigationController?.pushViewController(chatLogCollectionVC, animated: true)
    }
    
    @objc func createRoom(sender: UIBarButtonItem!) {
        print("Create room action being triggered")
        showModalView()
    }
    
    func showModalView() {
        let modalViewController = CreateRoomModalViewController()
//        self.view.backgroundColor = UIColor.gray
        modalViewController.modalPresentationStyle = .overCurrentContext
        
        let blurEffect = UIBlurEffect(style: .dark)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = self.view.bounds
        self.view.addSubview(blurView)
        self.present(modalViewController, animated: true) {
            print("PRESENTED MODAL VIEW")
        }
//        self.performSegue(withIdentifier: "toCreateRoomView", sender: self)
    }
}


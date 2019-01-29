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
    
    let createRoomButton: UIBarButtonItem = {
        let createJoinRoomButton = UIBarButtonItem(title: "Create Room", style: .plain, target: self, action: #selector(createRoom))
        return createJoinRoomButton
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView?.backgroundColor = UIColor.white
        tableView?.alwaysBounceVertical = true
        self.navigationItem.title = "Active Rooms"
        self.navigationItem.rightBarButtonItem = createRoomButton
        
        tableView.register(RoomsTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

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
    
    @objc func createRoom() {
        print("Create room action being triggered")
    }
}


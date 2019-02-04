//
//  ViewController.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import UIKit


class RoomsTableView: UITableViewController {
    static var shared = RoomsTableView()
    
    var activeRooms: [Room] = [Room]()
    let chatRoom = ChatRoom()
    
    //     MARK TODO: Can these uielements be extracted to a helper file?
    lazy var createRoomButton: UIBarButtonItem = {
        let createJoinRoomButton = UIBarButtonItem(title: "Create Room", style: .plain, target: self, action: #selector(createRoom(sender:)))
        return createJoinRoomButton
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.backgroundColor = UIColor.white
        tableView?.alwaysBounceVertical = true
        self.navigationItem.title = "Active Rooms"
        tableView.delegate = self
        tableView.dataSource = self
        self.navigationItem.rightBarButtonItem = createRoomButton
        tableView.register(RoomTableViewCell.self, forCellReuseIdentifier: "RoomTableViewCell")
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tableView.reloadData()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chatRoomViewController = ChatRoomViewController()
        self.navigationController?.pushViewController(chatRoomViewController, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomTableViewCell", for: indexPath) as! RoomTableViewCell
        cell.textLabel?.text = RoomsTableView.shared.activeRooms[indexPath.row].roomName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if RoomsTableView.shared.activeRooms.count == 0 {
            self.navigationController?.title = "No Active Rooms"
        }
        
        return RoomsTableView.shared.activeRooms.count
    }
    
    @objc func createRoom(sender: UIBarButtonItem) {
        print("User wants to create a room")
        
        let createRoomAlert = UIAlertController(title: "Enter Room Name", message: "Please enter the name of the room you'd like to join or create!", preferredStyle: .alert)
        createRoomAlert.addTextField { (roomNameTextField) in
            roomNameTextField.placeholder = "Room Name?"
        }
        
        let saveAction = UIAlertAction(title: "Create/Join Room", style: .default) { (action) in
            guard let roomName = createRoomAlert.textFields?[0].text else {return}
            print("Name of the room user wants to create/join \(roomName)")
            let room = Room(roomName: roomName)
            self.chatRoom.room = room
            self.chatRoom.joinRoom()
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("User has canceled the action to create/join a room")
        }
        createRoomAlert.addAction(saveAction)
        createRoomAlert.addAction(cancelAction)
        self.present(createRoomAlert, animated: true, completion: nil)
//                showModalView()
    }
    
    func showModalView() {
        let modalController = ModalController()
        //        modalController.modalPresentationStyle = .overCurrentContext
        self.present(modalController, animated: true, completion: nil)
    }
    
}


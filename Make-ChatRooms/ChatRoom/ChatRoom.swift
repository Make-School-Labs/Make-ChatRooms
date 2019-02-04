//
//  ChatRoom.swift
//  Make-ChatRooms
//
//  Created by Matthew Harrilal on 1/28/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import SocketIO

class ChatRoom: NSObject {
    var user: User?
    var room: Room?
    
    //    func sendSocketNickname(user: User) {
    //        print("USER SENT THROUGH DELEGATE \(user)")
    //    }
    
    static let manager = SocketManager(socketURL: URL(string: "http://localhost:4000/")!, config: [.log(true), .compress])
    private var socket = manager.defaultSocket // Singleton instance  one socket connection per phone
    
    //    static var roomName = ""
    
    override init() {
        super.init()
        socket.connect() // When you instantiate the chat room the socket connects to the server
        emittedEvents()
    }
    
    
    func emittedEvents() {
        socket.on(clientEvent: .connect) {data, ack in
            print(data)
            print("socket connected")
        }
        
        
        socket.on(clientEvent: .disconnect) { (data, ack) in
            print("This is the disconnect data \(data)")
        }
        
        socket.on("chat message") { (data, ack) in
            let messageDict = data[0] as! NSDictionary
            //            let dataObject = NSKeyedArchiver.archivedData(withRootObject: data[0])
            //            let message = NSKeyedUnarchiver.unarchiveObject(with: dataObject) as! Message
            let serializedData = try? JSONSerialization.data(withJSONObject: messageDict, options: .prettyPrinted)
            let message = try? JSONDecoder().decode(Message.self, from: serializedData!)
            
            
            print("CHAT DATA \(message)")
        }
    }
    
    func sendNickname() {
        guard let username = self.user?.username else {return}
        //        let user = User(username: username, activeRooms: nil)
        self.socket.emit("socketUsername", username)
    }
    
    
    // Is goingt now take in a message object
    func sendMessage(message: Message) { // Has to conect first so triggering message isn't the first thing that occurs
        
        
        // MARK: TODO  SENDING COMPLEX DATA TYPE DIDNT ALLOW ME TO DECODE WHEN COMING BACK TO EVENT LISTENER
        let testMessage: [String : Any] = ["senderUsername": message.senderUsername, "messageContent": message.messageContent, "messageSender": message.messageSender]
        self.socket.emit("chat message", testMessage)
    }
    
    func joinRoom() {
        guard let room = self.room else {return}
        self.socket.emit("joinRoom", room.roomName) // Join pre-exisiting chat room with given name being sent to server
        RoomsTableView.shared.activeRooms.append(room)
    }
    
    func createRoom(roomName: String) {
        self.socket.emit("createRoom", roomName) // Create room and send to the server the given name
    }
    
    func leaveRoom(roomName:String) {
        self.socket.emit("leaveRoom", roomName) // Leave the specified room that the user is in
    }
    
}





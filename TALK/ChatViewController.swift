//
//  ChatViewController.swift
//  0711HW
//
//  Created by Jimin on 7/19/25.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet private var chatTableView: UITableView!
    
    var chatroomId: Int?
    var navigationTitle: String?
    private let list = ChatList.list
    private var chatRoom: ChatRoom?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = navigationTitle
        configureTableView()
        
        if let id = chatroomId {
            for room in list {
                if room.chatroomId == id {
                    chatRoom = room
                    break
                }
            }
        }
    }
    
    private func configureTableView() {
        chatTableView.delegate = self
        chatTableView.dataSource = self
        
        chatTableView.rowHeight = UITableView.automaticDimension
        chatTableView.separatorStyle = .none
        
        let xib = UINib(nibName: "ChatTableViewCell", bundle: nil)
        chatTableView.register(xib, forCellReuseIdentifier: ChatTableViewCell.identifier)
        
        let xib2 = UINib(nibName: "AnswerTableViewCell", bundle: nil)
        chatTableView.register(xib2, forCellReuseIdentifier: AnswerTableViewCell.identifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatRoom?.chatList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let chatRoom = chatRoom {
            let chat = chatRoom.chatList[indexPath.row]
            
            if chat.user.name == ChatList.me.name {
                let cell = tableView.dequeueReusableCell(withIdentifier: AnswerTableViewCell.identifier, for: indexPath) as! AnswerTableViewCell
                cell.configureData(row: chat)
                
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: ChatTableViewCell.identifier, for: indexPath) as! ChatTableViewCell
                cell.configureData(row: chat)
                
                DispatchQueue.main.async {
                    cell.profileImage.layer.cornerRadius = cell.profileImage.frame.width / 2
                }
                cell.profileImage.clipsToBounds = true
                
                return cell
            }
        } else {
            return UITableViewCell()
        }
        
    }
}

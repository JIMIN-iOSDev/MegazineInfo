//
//  TalkCollectionViewCell.swift
//  0711HW
//
//  Created by Jimin on 7/19/25.
//

import UIKit

class TalkCollectionViewCell: UICollectionViewCell {

    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var chatLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    static let identifier = "TalkCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureView()
    }
    
    func configureView() {
        nameLabel.font = .boldSystemFont(ofSize: 17)
        nameLabel.textColor = .black
        chatLabel.font = .systemFont(ofSize: 15)
        chatLabel.textColor = .gray
        dateLabel.font = .systemFont(ofSize: 13)
        dateLabel.textColor = .gray
    }
    
    func configure(row: ChatRoom) {
        profileImage.image = UIImage(named: row.chatroomImage)
        nameLabel.text = row.chatroomName
        chatLabel.text = row.chatList.last?.message
        dateLabel.text = row.date
    }
}

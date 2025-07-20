//
//  ChatTableViewCell.swift
//  0711HW
//
//  Created by Jimin on 7/19/25.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var messageLabel: UILabel!
    @IBOutlet private var dateLabel: UILabel!
    
    static let identifier = "ChatTableViewCell"
    private let inputFormat = DateFormatter()
    private let outputFormat = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureView()
    }
    
    private func configureView() {
        messageLabel.layer.borderWidth = 1
        messageLabel.layer.borderColor = UIColor.gray.cgColor
        messageLabel.layer.cornerRadius = 5
        messageLabel.clipsToBounds = true
    }
    
    func configureData(row: Chat) {
        profileImage.image = UIImage(named: row.user.image)
        nameLabel.text = row.user.name
        messageLabel.text = row.message
        
        inputFormat.dateFormat = "yyyy-MM-dd HH:mm"
        outputFormat.dateFormat = "HH:mm"
        if let date = inputFormat.date(from: row.date) {
            dateLabel.text = outputFormat.string(from: date)
        }
    }
}

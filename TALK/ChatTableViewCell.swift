//
//  ChatTableViewCell.swift
//  0711HW
//
//  Created by Jimin on 7/19/25.
//

import UIKit

class ChatTableViewCell: UITableViewCell, CellProtocol {
    
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var messageUIView: UIView!
    @IBOutlet private var messageLabel: UILabel!
    @IBOutlet private var dateLabel: UILabel!
    
    static let identifier = "ChatTableViewCell"
    private let inputFormat = DateFormatter()
    private let outputFormat = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureView()
    }
    
    func configureView() {
        messageUIView.layer.cornerRadius = 10
        messageUIView.clipsToBounds = true
        messageUIView.layer.borderColor = UIColor.systemGray2.cgColor
        messageUIView.layer.borderWidth = 1
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

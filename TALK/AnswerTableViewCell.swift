//
//  AnswerTableViewCell.swift
//  0711HW
//
//  Created by Jimin on 7/19/25.
//

import UIKit

class AnswerTableViewCell: UITableViewCell {

    @IBOutlet private var chatLabel: UILabel!
    @IBOutlet private var timeLabel: UILabel!
    
    static let identifier = "AnswerTableViewCell"
    private let inputFormat = DateFormatter()
    private let outputFormat = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureView()
    }
    
    private func configureView() {
        chatLabel.layer.borderWidth = 1
        chatLabel.layer.borderColor = UIColor.systemGray2.cgColor
        chatLabel.backgroundColor = .systemGray5
        chatLabel.layer.cornerRadius = 5
        chatLabel.clipsToBounds = true
        timeLabel.textAlignment = .right
    }
    
    func configureData(row: Chat) {
        chatLabel.text = row.message
        
        inputFormat.dateFormat = "yyyy-MM-dd HH:mm"
        outputFormat.dateFormat = "HH:mm"
        if let date = inputFormat.date(from: row.date) {
            timeLabel.text = outputFormat.string(from: date)
        }
    }
}

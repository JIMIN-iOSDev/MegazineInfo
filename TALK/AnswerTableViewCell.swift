//
//  AnswerTableViewCell.swift
//  0711HW
//
//  Created by Jimin on 7/19/25.
//

import UIKit

class AnswerTableViewCell: UITableViewCell, CellProtocol {

    @IBOutlet private var chatUIView: UIView!
    @IBOutlet private var chatLabel: UILabel!
    @IBOutlet private var timeLabel: UILabel!
    
    static let identifier = "AnswerTableViewCell"
    private let inputFormat = DateFormatter()
    private let outputFormat = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureView()
    }
    
    func configureView() {
        chatUIView.layer.cornerRadius = 10
        chatUIView.clipsToBounds = true
        chatUIView.layer.borderColor = UIColor.systemGray2.cgColor
        chatUIView.layer.borderWidth = 1
        chatUIView.backgroundColor = .systemGray5
        chatLabel.backgroundColor = .clear
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

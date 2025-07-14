//
//  TravelTableViewCell.swift
//  0711HW
//
//  Created by Jimin on 7/14/25.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    let inputFormat = DateFormatter()
    let outputFormat = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.numberOfLines = 0
    }

    func configure(row: Magazine) {
        titleLabel.text = row.title
        subtitleLabel.text = row.subtitle
        
        let url = URL(string: row.photoImage)
        photoImageView.kf.setImage(with: url)
        
        inputFormat.dateFormat = "yyMMdd"
        outputFormat.dateFormat = "yy년 MM월 dd일"
        
        if let date = inputFormat.date(from: row.date) {
            dateLabel.text = outputFormat.string(from: date)
        } else {
            dateLabel.text = "날짜 없음"
        }
    }
    
}

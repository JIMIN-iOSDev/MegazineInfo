//
//  TravelingTableViewCell.swift
//  0711HW
//
//  Created by 서지민 on 7/15/25.
//

import UIKit
import Kingfisher

class TravelingTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var saveLabel: UILabel!
    @IBOutlet var posterImageView: UIImageView!
    
    static let identifier = "TravelingTableViewCell"
    let numberFormatter = NumberFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        numberFormatter.numberStyle = .decimal
    }
    
    func configure(row: Travel) {
        titleLabel.text = row.title
        subtitleLabel.text = row.description
        saveLabel.text = "저장 \(numberFormatter.string(for: row.save)!)"
        let url = URL(string: row.travelImage)
        posterImageView.kf.setImage(with: url)
    }

//    @IBAction func likeButtonTapped(_ sender: UIButton) {
//        
//    }
    
}

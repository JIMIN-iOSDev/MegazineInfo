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
    @IBOutlet var likeButton: UIButton!
    
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
        
        if row.like {
            let image = UIImage(systemName: "heart.fill")
            likeButton.setImage(image, for: .normal)
        } else {
            let image = UIImage(systemName: "heart")
            likeButton.setImage(image, for: .normal)
        }
    }
    
}

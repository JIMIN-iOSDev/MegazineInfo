//
//  AdvertiseTableViewCell.swift
//  0711HW
//
//  Created by Jimin on 7/15/25.
//

import UIKit

class AdvertiseTableViewCell: UITableViewCell {

    @IBOutlet var advertiseLabel: UILabel!
    
    static let identifier = "AdvertiseTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.backgroundColor = .systemPink.withAlphaComponent(0.3)
    }
    
    func configure(ad: Ad) {
        advertiseLabel.text = ad.title
    }
}

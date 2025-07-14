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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.numberOfLines = 0
    }

    
}

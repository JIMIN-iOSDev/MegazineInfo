//
//  PopularCityTableViewCell.swift
//  0711HW
//
//  Created by Jimin on 7/16/25.
//

import UIKit

class PopularCityTableViewCell: UITableViewCell {

    
    @IBOutlet var cityImageView: UIImageView!
    @IBOutlet var cityNameLabel: UILabel!
    @IBOutlet var cityEnglishNameLabel: UILabel!
    @IBOutlet var explainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        explainLabel.backgroundColor = .black.withAlphaComponent(0.5)
    }
    
    func configure(row: City) {
        let url = URL(string: row.cityImage)
        cityImageView.kf.setImage(with: url)
        
        cityNameLabel.text = "\(row.cityName) "
        cityEnglishNameLabel.text = "| \(row.cityEnglishName)"
        explainLabel.text = "  \(row.cityExplain)"
    }
    
}

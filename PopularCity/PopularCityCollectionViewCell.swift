//
//  PopularCityCollectionViewCell.swift
//  0711HW
//
//  Created by 서지민 on 7/17/25.
//

import UIKit

class PopularCityCollectionViewCell: UICollectionViewCell {

    @IBOutlet var cityImage: UIImageView!
    @IBOutlet var cityName: UILabel!
    @IBOutlet var cityExplain: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cityImage.contentMode = .scaleAspectFill
        cityName.numberOfLines = 0
        cityName.textAlignment = .center
        cityExplain.numberOfLines = 0
        cityExplain.textAlignment = .center
    }
    
    func configure(row: City) {
        let url = URL(string: row.cityImage)
        cityImage.kf.setImage(with: url)
        cityName.text = "\(row.cityName) | \(row.cityEnglishName)"
        cityExplain.text = row.cityExplain
    }

}

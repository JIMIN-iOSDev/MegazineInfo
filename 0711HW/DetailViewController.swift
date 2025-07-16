//
//  DetailViewController.swift
//  0711HW
//
//  Created by 서지민 on 7/15/25.
//

import UIKit
import Kingfisher

class DetailViewController: UIViewController {

    @IBOutlet var posterImgeView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var anotherButton: UIButton!
    
    var travelRow: Travel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let row = travelRow {
            let url = URL(string: row.travelImage)
            posterImgeView.kf.setImage(with: url)
            titleLabel.text = row.title
            subtitleLabel.text = row.description
        }
        
        anotherButton.configure(title: "다른 관광지 보러 가기")
        anotherButton.addTarget(self, action: #selector(anotherButtonTapped), for: .touchUpInside)
    }
    
    @objc
    func anotherButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
}

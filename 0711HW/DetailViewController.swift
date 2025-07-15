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
    
    var travelRow: Travel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let row = travelRow {
            let url = URL(string: row.travelImage)
            posterImgeView.kf.setImage(with: url)
            titleLabel.text = row.title
            subtitleLabel.text = row.description
        }
    }
    
    @IBAction func anotherButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

//
//  AdvertiseViewController.swift
//  0711HW
//
//  Created by Jimin on 7/15/25.
//

import UIKit

class AdvertiseViewController: UIViewController {

    @IBOutlet var advertiseLabel: UILabel!
    
    var adRow: Ad?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let row = adRow {
            advertiseLabel.text = row.title
        }
        
    }

    @IBAction func exitButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }

}

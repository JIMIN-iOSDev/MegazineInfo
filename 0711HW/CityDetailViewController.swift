//
//  CityDetailViewController.swift
//  0711HW
//
//  Created by Jimin on 7/16/25.
//

import UIKit

class CityDetailViewController: UIViewController {

    @IBOutlet var cityImageView: UIImageView!
    @IBOutlet var cityNameLabel: UILabel!
    @IBOutlet var cityExplainLabel: UILabel!
    @IBOutlet var anotherButton: UIButton!
    
    var profile: City = City(cityName: "", cityEnglishName: "", cityExplain: "", cityImage: "", domesticTravel: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        anotherButton.configure(title: "다른 도시 보러 가기")
        anotherButton.addTarget(self, action: #selector(anotherButtonTapped), for: .touchUpInside)
    }
    
    func configureUI() {
        let url = URL(string: profile.cityImage)
        cityImageView.kf.setImage(with: url)
        
        cityNameLabel.text = "\(profile.cityName) | \(profile.cityEnglishName)"
        cityExplainLabel.text = profile.cityExplain
    }

    @objc
    func anotherButtonTapped() {
        dismiss(animated: true)
    }
    

}

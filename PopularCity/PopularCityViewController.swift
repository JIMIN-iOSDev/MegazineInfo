//
//  PopularCityViewController.swift
//  0711HW
//
//  Created by Jimin on 7/16/25.
//

import UIKit

class PopularCityViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var totalButton: UIButton!
    @IBOutlet var domesticButton: UIButton!
    @IBOutlet var abroadButton: UIButton!
    @IBOutlet var cityCollectionView: UICollectionView!
    
    var city = CityInfo().city
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureCollectionView()
        totalButton.defaultButton(title: "모두")
        domesticButton.defaultButton(title: "국내")
        abroadButton.defaultButton(title: "해외")
    }
    
    func configureCollectionView() {
        cityCollectionView.delegate = self
        cityCollectionView.dataSource = self
        
        cityCollectionView.backgroundColor = .clear
        
        let xib = UINib(nibName: "PopularCityCollectionViewCell", bundle: nil)
        cityCollectionView.register(xib, forCellWithReuseIdentifier: "PopularCityCollectionViewCell")
        
        let layout = UICollectionViewFlowLayout()
        let deviceWidth = UIScreen.main.bounds.width
        let cellWidth = deviceWidth - (15 * 2) - 20
        
        layout.itemSize = CGSize(width: cellWidth/2, height: cellWidth/2 + 80)
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .vertical
        
        cityCollectionView.collectionViewLayout = layout
    }
    
    @IBAction func totalButtonTapped(_ sender: UIButton) {
        totalButton.selectButton()
        domesticButton.defaultButton(title: "국내")
        abroadButton.defaultButton(title: "해외")
    }
    
    @IBAction func domesticButtonTapped(_ sender: UIButton) {
        domesticButton.selectButton()
        totalButton.defaultButton(title: "모두")
        abroadButton.defaultButton(title: "해외")
        
        let all = CityInfo().city
        var filter: [City] = []
        
        for item in all {
            if item.domesticTravel {
                filter.append(item)
            }
        }
        
        city = filter
        cityCollectionView.reloadData()
    }
    
    @IBAction func abroadButtonTapped(_ sender: UIButton) {
        abroadButton.selectButton()
        totalButton.defaultButton(title: "모두")
        domesticButton.defaultButton(title: "국내")
        
        let all = CityInfo().city
        var filter: [City] = []
        
        for item in all {
            if item.domesticTravel == false{
                filter.append(item)
            }
        }
        
        city = filter
        cityCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return city.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularCityCollectionViewCell", for: indexPath) as! PopularCityCollectionViewCell
        cell.configure(row: city[indexPath.item])
        return cell
    }

}

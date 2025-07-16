//
//  PopularCityViewController.swift
//  0711HW
//
//  Created by Jimin on 7/16/25.
//

import UIKit

class PopularCityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var cityTableView: UITableView!
    
    let city = CityInfo().city
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureTableView()
    }
    
    func configureTableView() {
        cityTableView.delegate = self
        cityTableView.dataSource = self
        
        cityTableView.rowHeight = 200
        cityTableView.backgroundColor = .clear
        
        let xib = UINib(nibName: "PopularCityTableViewCell", bundle: nil)
        cityTableView.register(xib, forCellReuseIdentifier: "PopularCityTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PopularCityTableViewCell", for: indexPath) as! PopularCityTableViewCell
        
        cell.configure(row: city[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CityDetailViewController") as! CityDetailViewController
        vc.profile = city[indexPath.row]
        present(vc, animated: true)
    }

}

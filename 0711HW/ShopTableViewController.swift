//
//  ShopTableViewController.swift
//  0711HW
//
//  Created by Jimin on 7/13/25.
//

import UIKit

struct Shop {
    let list: String
    let check: Bool
    let star: Bool
}

class ShopTableViewController: UITableViewController {

    @IBOutlet var addTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    var list: [Shop] = [
        Shop(list: "케이스", check: true, star: false),
        Shop(list: "양말", check: true, star: true),
        Shop(list: "그립톡", check: false, star: false),
        Shop(list: "사이다", check: true, star: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setBackground()
        
        tableView.rowHeight = 80
    }

    @IBAction func addButtonTapped(_ sender: UIButton) {
        if addTextField.text!.isEmpty {
            print("추가 불가능")
        } else {
            list.append(Shop(list: addTextField.text!, check: Bool.random(), star: Bool.random()))
            tableView.reloadData()
        }
        addTextField.text = nil
        view.endEditing(true)
    }
    
    @IBAction func returnDidEndOnExit(_ sender: UITextField) {
        addButtonTapped(addButton)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! ShopTableViewCell
        
        cell.listLabel.text = list[indexPath.row].list
        
        if list[indexPath.row].check {
            cell.checkImageView.image = UIImage(systemName: "checkmark.square.fill")
        } else {
            cell.checkImageView.image = UIImage(systemName: "checkmark.square")
        }
        
        if list[indexPath.row].star {
            cell.starImageView.image = UIImage(systemName: "star.fill")
        } else {
            cell.starImageView.image = UIImage(systemName: "star")
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        list.remove(at: indexPath.row)
        tableView.reloadData()
    }

}

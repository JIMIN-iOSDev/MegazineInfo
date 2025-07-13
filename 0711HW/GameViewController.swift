//
//  GameViewController.swift
//  0711HW
//
//  Created by Jimin on 7/12/25.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var numberTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberTextViewUI()
    }
    
    func numberTextViewUI() {
        numberTextView.font = .boldSystemFont(ofSize: 20)
        numberTextView.textColor = .gray
        numberTextView.textAlignment = .center
        numberTextView.isEditable = false
    }
    
    @IBAction func returnButtonTapped(_ sender: UITextField) {
        numberTextView.text = ""
        if numberTextField.text!.isEmpty {
            print("값이 없음")
        } else {
            for i in 1...Int(numberTextField.text!)! {
                let num = String(i)
                if num.contains("3") || num.contains("6") || num.contains("9") {
                    numberTextView.text += "👏 "
                } else {
                    numberTextView.text += "\(num) "
                }
            }
        }
        numberTextField.text = ""
        view.endEditing(true)
    }
    
    
}

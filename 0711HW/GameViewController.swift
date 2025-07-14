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
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackground()
        
        numberTextViewUI()
        resultLabel.text = ""
    }
    
    func numberTextViewUI() {
        numberTextView.font = .boldSystemFont(ofSize: 20)
        numberTextView.textColor = .gray
        numberTextView.textAlignment = .center
        numberTextView.isEditable = false
    }
    
    @IBAction func returnButtonTapped(_ sender: UITextField) {
        numberTextView.text = ""
        var count = 0
        
        if numberTextField.text!.isEmpty {
            print("값이 없음")
        } else {
            
            // 3-3
//            for i in 1...Int(numberTextField.text!)! {
//                let num = String(i)
//                if num.contains("3") || num.contains("6") || num.contains("9") {
//                    numberTextView.text += "👏 "
//                } else {
//                    numberTextView.text += "\(num) "
//                }
//            }
            
            // 3-4
            for i in 1...Int(numberTextField.text!)! {
                var num = String(i)
                
                if num.contains("3") || num.contains("6") || num.contains("9") {
                    num = num.replacingOccurrences(of: "3", with: "👏")
                    num = num.replacingOccurrences(of: "6", with: "👏")
                    num = num.replacingOccurrences(of: "9", with: "👏")
                    comma()
                    
                    for index in num.indices {
                        if num[index] == "👏" {
                            count += 1
                        }
                    }
                } else {
                    comma()
                }
                
                func comma() {
                    if i != Int(numberTextField.text!) {
                        numberTextView.text += "\(num), "
                    } else {
                        numberTextView.text += "\(num)"
                    }
                }
            }
            
            resultLabel.text = "숫자 \(numberTextField.text!)까지 총 박수는\n\(count)번 입니다."

        }
        
        numberTextField.text = ""
        view.endEditing(true)
    }
    
}

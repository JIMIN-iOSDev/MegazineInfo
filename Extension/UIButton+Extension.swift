//
//  UIButton+Extension.swift
//  0711HW
//
//  Created by Jimin on 7/16/25.
//

import UIKit

extension UIButton {
    
    func configure(title: String) {
        self.setTitle(title, for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = .systemMint
        self.layer.cornerRadius = 15
        self.clipsToBounds = true
    }
    
    func defaultButton(title: String) {
        self.setTitle(title, for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.backgroundColor = .gray
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
    func selectButton() {
        self.backgroundColor = .white
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1
    }
    
}

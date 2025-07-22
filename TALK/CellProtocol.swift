//
//  CellProtocol.swift
//  0711HW
//
//  Created by Jimin on 7/23/25.
//

import Foundation

protocol CellProtocol: AnyObject {
    func configureView()
    func configureData(row: Chat)
}

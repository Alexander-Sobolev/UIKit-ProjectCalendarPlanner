//
//  UILabel.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 27.07.2021.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont?, alignment: NSTextAlignment = .left) {
        self.init()

        self.text = text
        self.font = font
        self.textColor = .black
        self.textAlignment = alignment
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

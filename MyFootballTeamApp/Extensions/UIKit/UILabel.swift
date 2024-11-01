//
//  UILabel.swift
//  MyFootballTeamApp
//
//  Created by Никита Козловский on 31.10.2024.
//

import UIKit

extension UILabel {
    
    // - Инициализируем свойства, которые будем использовать для UILabel
    convenience init(text: String, font: UIFont?, aligment: NSTextAlignment = .left, numberOfLines: Int) {
        self.init()
        
        self.text = text
        self.font = font
        self.numberOfLines = numberOfLines
        self.textColor = .black
        self.textAlignment = aligment
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}

//
//  MenuCell.swift
//  MyFootballTeamApp
//
//  Created by Никита Козловский on 31.10.2024.
//

import UIKit

final class MenuCell: UITableViewCell {
    
    private lazy var titleLable = UILabel(text: "", font: .italicSystemFont(ofSize: 16), aligment: .right)
    
    private lazy var arrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "arrow")
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(titleLable)
        self.addSubview(arrowImageView)
        
        NSLayoutConstraint.activate([
            titleLable.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            titleLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            arrowImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            arrowImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            arrowImageView.heightAnchor.constraint(equalToConstant: self.frame.height / 2),
            arrowImageView.widthAnchor.constraint(equalToConstant: self.frame.height / 2)
        ])
    }
    
    func setupTitleLable(indexPath: IndexPath) {
        titleLable.text = Constants.menu[indexPath.row]
    }
}

//
//  PlayersCell.swift
//  MyFootballTeamApp
//
//  Created by Никита Козловский on 31.10.2024.
//

import UIKit

final class PlayerCell: UITableViewCell {
    
    private lazy var playerNameLabel = UILabel(text: "", font: .boldSystemFont(ofSize: 14), aligment: .left)
    
    private lazy var playerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
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
        self.addSubview(playerNameLabel)
        self.addSubview(playerImageView)
        
        NSLayoutConstraint.activate([
            playerImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            playerImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            playerImageView.heightAnchor.constraint(equalToConstant: 80),
            playerImageView.widthAnchor.constraint(equalToConstant: 80),
            
            playerNameLabel.leadingAnchor.constraint(equalTo: playerImageView.trailingAnchor, constant: 15),
            playerNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            playerNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40)
        ])
    }
    
    func setupTitleLable(indexPath: IndexPath) {
        playerImageView.image = PlayersMockData.playersPhoto[indexPath.row]
        playerNameLabel.text = PlayersMockData.playersNames[indexPath.row]
    }
}

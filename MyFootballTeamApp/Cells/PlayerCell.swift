//
//  PlayersCell.swift
//  MyFootballTeamApp
//
//  Created by Никита Козловский on 31.10.2024.
//

import UIKit

final class PlayerCell: UITableViewCell {
    
    private lazy var playerNameLabel = UILabel(text: "", font: .boldSystemFont(ofSize: 14), aligment: .left, numberOfLines: 2)
    private lazy var playerAgeLabel = UILabel(text: "", font: .systemFont(ofSize: 12), aligment: .left, numberOfLines: 2)
    private lazy var playerPositionLabel = UILabel(text: "", font: .systemFont(ofSize: 12), aligment: .left, numberOfLines: 2)
    private lazy var playerGoalsLabel = UILabel(text: "", font: .systemFont(ofSize: 12), aligment: .left, numberOfLines: 2)
    private lazy var playerPassesLabel = UILabel(text: "", font: .systemFont(ofSize: 12), aligment: .left, numberOfLines: 2)
    private lazy var playedMatchesLabel = UILabel(text: "0", font: .systemFont(ofSize: 12), aligment: .left, numberOfLines: 2)

    
    private lazy var playerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var verticalStackView = UIStackView(arrangedSubviews: [playerNameLabel, playerAgeLabel, playerPositionLabel], axis: .vertical, spacing: 3, distribution: .fillProportionally)
    
    private lazy var verticalGameStatsStackView = UIStackView(arrangedSubviews: [playedMatchesLabel, playerGoalsLabel, playerPassesLabel], axis: .vertical, spacing: 3, distribution: .fillProportionally)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(verticalStackView)
        self.addSubview(verticalGameStatsStackView)
        self.addSubview(playerImageView)
        
        NSLayoutConstraint.activate([
            playerImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            playerImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            playerImageView.heightAnchor.constraint(equalToConstant: 80),
            playerImageView.widthAnchor.constraint(equalToConstant: 80),
            
            verticalStackView.leadingAnchor.constraint(equalTo: playerImageView.trailingAnchor, constant: 15),
            verticalStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            verticalStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -100),
            
            verticalGameStatsStackView.leadingAnchor.constraint(equalTo: verticalStackView.trailingAnchor, constant: 15),
            verticalGameStatsStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            verticalGameStatsStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
        ])
    }
    
    func setupInfoLables(indexPath: IndexPath) {
        let playerData = PlayersMockData.players[indexPath.row]
        playerImageView.image = playerData.photo
        playerNameLabel.text = playerData.name
        playerAgeLabel.text = playerData.age
        playerPositionLabel.text = playerData.position
        playerGoalsLabel.text = "Голов: \(playerData.goals)"
        playerPassesLabel.text = "Ассисты: \(playerData.assists)"
        playedMatchesLabel.text = "Матчей: \(playerData.playedMatches)"
    }
}

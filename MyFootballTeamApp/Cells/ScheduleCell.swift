//
//  ScheduleCell.swift
//  MyFootballTeamApp
//
//  Created by Никита Козловский on 31.10.2024.
//

import UIKit

class ScheduleCell: UITableViewCell {
    
    private lazy var homeTeamLabel = UILabel(text: "", font: .boldSystemFont(ofSize: 14), aligment: .left)
    private lazy var guestTeamLabel = UILabel(text: "", font: .boldSystemFont(ofSize: 14), aligment: .left)
    private lazy var tourLabel = UILabel(text: "", font: .boldSystemFont(ofSize: 14), aligment: .left)
    private lazy var vsLabel = UILabel(text: "vs", font: .systemFont(ofSize: 10), aligment: .left)
    
    private lazy var horizontalStackView = UIStackView(arrangedSubviews: [homeTeamLabel, vsLabel, guestTeamLabel], axis: .horizontal, spacing: 3, distribution: .fillProportionally)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(horizontalStackView)
        self.addSubview(tourLabel)
        
        NSLayoutConstraint.activate([
            horizontalStackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            horizontalStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
//            horizontalStackView.trailingAnchor.constraint(equalTo: tourLabel.leadingAnchor, constant: -50),
            
            tourLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            tourLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15)
        ])
    }
    
    func setupTitleLable(indexPath: IndexPath) {
        homeTeamLabel.text = MockDataEnums.homeTeam[indexPath.row]
        guestTeamLabel.text = MockDataEnums.guestTeam[indexPath.row]
        tourLabel.text = "\(MockDataEnums.tourNumber[indexPath.row]) тур"
    }
}

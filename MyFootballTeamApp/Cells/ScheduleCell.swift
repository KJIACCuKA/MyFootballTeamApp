//
//  ScheduleCell.swift
//  MyFootballTeamApp
//
//  Created by Никита Козловский on 31.10.2024.
//

import UIKit

class ScheduleCell: UITableViewCell {
    
    private lazy var homeTeamLabel = UILabel(text: "", font: .boldSystemFont(ofSize: 14), aligment: .left, numberOfLines: 1)
    private lazy var guestTeamLabel = UILabel(text: "", font: .boldSystemFont(ofSize: 14), aligment: .left, numberOfLines: 1)
    private lazy var tourLabel = UILabel(text: "", font: .boldSystemFont(ofSize: 14), aligment: .left, numberOfLines: 1)
//    private lazy var vsLabel = UILabel(text: "vs", font: .systemFont(ofSize: 10), aligment: .left, numberOfLines: 1)
    
    private lazy var horizontalStackView = UIStackView(arrangedSubviews: [homeTeamLabel], axis: .horizontal, spacing: 3, distribution: .fillProportionally)
    
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
//            horizontalStackView.trailingAnchor.constraint(equalTo: tourLabel.leadingAnchor, constant: -10),
            
            tourLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            tourLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15)
        ])
    }
    
    func setupTitleLable(indexPath: IndexPath) {
        let title = MockDataEnums.homeTeam[indexPath.row] + " - " + MockDataEnums.guestTeam[indexPath.row]
        
        homeTeamLabel.text = title
        tourLabel.text = "\(MockDataEnums.tourNumber[indexPath.row]) тур"
    }
}

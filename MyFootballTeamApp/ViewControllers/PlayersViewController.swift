//
//  PlayersViewController.swift
//  MyFootballTeamApp
//
//  Created by Никита Козловский on 31.10.2024.
//

import UIKit

class PlayersViewController: UIViewController {
    
    private lazy var playersTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(PlayerCell.self, forCellReuseIdentifier: "\(PlayerCell.self)")
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.delegate = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Состав команды"
        view.backgroundColor = .systemBackground
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(playersTableView)
        NSLayoutConstraint.activate([
            playersTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            playersTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            playersTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            playersTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ])
    }
}

extension PlayersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        PlayersMockData.playersPhoto.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(PlayerCell.self)", for: indexPath) as? PlayerCell else { return UITableViewCell() }
        cell.setupTitleLable(indexPath: indexPath)
        return cell
    }
}

extension PlayersViewController: UITableViewDelegate {
    
}

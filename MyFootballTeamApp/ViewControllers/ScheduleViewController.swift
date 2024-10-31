//
//  ScheduleViewController.swift
//  MyFootballTeamApp
//
//  Created by Никита Козловский on 31.10.2024.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    private lazy var scheduleTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(ScheduleCell.self, forCellReuseIdentifier: "\(ScheduleCell.self)")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.isScrollEnabled = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Расписание"
        view.backgroundColor = .systemBackground
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(scheduleTableView)
        NSLayoutConstraint.activate([
            scheduleTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scheduleTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            self.scheduleTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            self.scheduleTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ])
    }
}

extension ScheduleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Constants.tourNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(ScheduleCell.self)", for: indexPath) as? ScheduleCell else { return UITableViewCell() }
        cell.setupTitleLable(indexPath: indexPath)
        return cell
    }
    
    
}

extension ScheduleViewController: UITableViewDelegate {
    
}

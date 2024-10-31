//
//  ViewController.swift
//  MyFootballTeamApp
//
//  Created by Никита Козловский on 31.10.2024.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var teamImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Boa")
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .systemBackground
        return imageView
    }()
    
    private lazy var menuTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(MenuCell.self, forCellReuseIdentifier: "\(MenuCell.self)")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.isScrollEnabled = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ЛФК Боавишта"
        view.backgroundColor = .systemBackground
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(teamImageView)
        view.addSubview(menuTableView)
        
        NSLayoutConstraint.activate([
            teamImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            teamImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            teamImageView.heightAnchor.constraint(equalToConstant: 200),
            teamImageView.widthAnchor.constraint(equalToConstant: 200),
            
            menuTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            menuTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            menuTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            menuTableView.topAnchor.constraint(equalTo: teamImageView.bottomAnchor, constant: 30)
        ])
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(MenuCell.self)", for: indexPath) as? MenuCell else { return UITableViewCell() }
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    
}

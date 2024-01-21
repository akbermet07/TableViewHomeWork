//
//  ContactsViewController.swift
//  TableViewHomeWork
//
//  Created by Акбермет Таалайбек кызы on 21/1/24.
//

import UIKit

class ContactsViewController: UIViewController {
    
    private var tableView: UITableView = {
        let view = UITableView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "My contacts"
        
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension ContactsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ContactsTableViewCell(style: .subtitle, reuseIdentifier: ContactsTableViewCell().cell)
        return cell
    }
}

class ContactsTableViewCell: UITableViewCell {
    
    let cell = "ContactsTableViewCell"
    
    var userImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "user")
        view.contentMode = .scaleAspectFit
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var userName: UILabel = {
        let view = UILabel()
        view.text = "Akbermet"
        view.font = .systemFont(ofSize: 18, weight: .bold)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var userPhoneNumber: UILabel = {
        let view = UILabel()
        view.text = "Welcome back , Akbermet"
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(userImage)
        NSLayoutConstraint.activate([
            userImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            userImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            userImage.heightAnchor.constraint(equalToConstant: 40),
            userImage.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
}

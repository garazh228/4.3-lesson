//
//  SecondViewController.swift
//  4.3 lesson
//
//  Created by adyl CEO on 22/01/2024.
//

import UIKit
    
    
class SecondViewController: UIViewController, UITableViewDataSource {
    
    var contacts: [Contact] = []
    private let cellID = "cell"
    
    let tableView: UITableView = {
       let tableView = UITableView()
       tableView.translatesAutoresizingMaskIntoConstraints = false
       return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(tableView)
        
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
        ])
        
        setupData()
    }
    
    private func setupData() {
        contacts = [
            Contact(image: "person", name: "Tom Hanks", phoneNumber: "+7 777 777 777"),
            Contact(image: "person", name: "Leonardo DiCaprio", phoneNumber: "+1 111 111 111"),
            Contact(image: "person", name: "Denzel Washington", phoneNumber: "+2 222 222 222"),
            Contact(image: "person", name: "Robert De Niro", phoneNumber: "+5 555 555 555"),
            Contact(image: "person", name: "Brad Pitt", phoneNumber: "+0 000 000 000"),
            Contact(image: "person", name: "Johnny Depp", phoneNumber: "+3 333 333 333"),
            Contact(image: "person", name: "Will Smith", phoneNumber: "+3 333 333 333"),
            Contact(image: "person", name: "Morgan Freeman", phoneNumber: "+8 888 888 888"),
            Contact(image: "person", name: "Harrison Ford", phoneNumber: "+3 333 333 333"),
            Contact(image: "person", name: "Anthony Hopkins", phoneNumber: "+4 444 444 444"),
            Contact(image: "person", name: "Jude Bellingham", phoneNumber: "+5 555 555 555")
        ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
         
        let contact = contacts[indexPath.row]
        
        cell.textLabel?.text = "\(contact.name)\n\(contact.phoneNumber)"
        
        cell.imageView?.image = UIImage(systemName: contact.image)
        cell.textLabel?.numberOfLines = 2
        cell.textLabel?.textColor = UIColor(hex: 0x8A8A8D)
        return cell
    }
}

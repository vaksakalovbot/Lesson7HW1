//
//  SecondTableViewController.swift
//  Lesson7HW1
//
//  Created by vaksakalov on 09.06.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {

    let persons = DataManager.shared.persons
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondTableViewCell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = persons[indexPath.section].phone
            cell.imageView?.image = UIImage(systemName: "phone")
        case 1:
            cell.textLabel?.text = persons[indexPath.section].email
            cell.imageView?.image = UIImage(systemName: "tray")
        default:
            break
        }
        
        return cell
    }

}

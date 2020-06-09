//
//  DetailViewController.swift
//  Lesson7HW1
//
//  Created by vaksakalov on 09.06.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneLabel.text = "Phone: \(person.phone ?? "")"
        emailLabel.text = "Email: \(person.email ?? "")"
        
    }
    
}

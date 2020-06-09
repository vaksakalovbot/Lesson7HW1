//
//  DataManager.swift
//  Lesson7HW1
//
//  Created by vaksakalov on 09.06.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var persons: [Person] = []
    
    private init() {
        self.persons = self.getPersons()
    }
    
    private func getPersons() -> [Person] {
        let firstNames: Set = [
            "Bruce", "John", "Stiven",
            "Aaron", "Tim", "Alan",
            "Sharon", "Ted", "Carl",
            "Nicola", "Mike", "Bob"
        ]
        
        let lastNames: Set = [
            "Butler", "Smith", "Black",
            "Robertson", "Murthy", "Williams",
            "Isaacson", "Jankin", "Pennyworth",
            "Dow", "Anderson", "Cook"
        ]
        
        var persons = [Person]()
        
        for (firstName, lastName) in zip(firstNames, lastNames) {
            persons.append(Person(firstName: firstName,
                                  lastName: lastName,
                                  phone: "+\(Int.random(in: 1...9))-\(Int.random(in: 100..<1000))-\(Int.random(in: 100..<1000))-\(Int.random(in: 10..<100))-\(Int.random(in: 10..<100))",
                email: "\(lastName.lowercased())_\(firstName.lowercased())@gmail.com"))
        }
        
//        for person in persons {
//            person.phone = "+\(Int.random(in: 1...9))-\(Int.random(in: 100..<1000))-\(Int.random(in: 100..<1000))-\(Int.random(in: 100..<1000))-\(Int.random(in: 10..<100))"
//            person.email = "\(person.lastName)@gmail.com"
//        }
        return persons
    }
    
}

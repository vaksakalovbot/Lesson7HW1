//
//  DataManager.swift
//  Lesson7HW1
//
//  Created by vaksakalov on 09.06.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

class DataManager {
    
    // Уместен ли здесь будет синглтон?
    static let shared = DataManager()
    
    var persons: [Person] = []
    
    private init() {
        self.persons = self.getRandomPersons()
    }
    
    private func getRandomPersons() -> [Person] {

        // Решил воспользоваться свойством множества для случайной выборки имен и фамилий
        // Через массивы тоже можно, но так интересней -> тем более результат один
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
            persons.append(
                Person(
                    firstName: firstName,
                    lastName: lastName,
                    phone: nil,                 //"+\(Int.random(in: 1...9))-\(Int.random(in: 100..<1000))-\(Int.random(in: 100..<1000))-\(Int.random(in: 10..<100))-\(Int.random(in: 10..<100))",
                    email: nil                  //"\(lastName.lowercased())_\(firstName.lowercased())@gmail.com"
                )
            )
        }
        
        // Сделал так, чтобы узнать твое мнение: корректно ли так работать с массивами и структурами?
        for index in 0..<persons.count {
            persons[index].phone = "+\(Int.random(in: 1...9))-\(Int.random(in: 100..<1000))-\(Int.random(in: 100..<1000))-\(Int.random(in: 10..<100))-\(Int.random(in: 10..<100))"
            persons[index].email = "\(persons[index].lastName.lowercased())_\(persons[index].firstName.lowercased())@gmail.com"
        }

        return persons
    }
    
}

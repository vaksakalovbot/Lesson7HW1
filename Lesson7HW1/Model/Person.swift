//
//  Person.swift
//  Lesson7HW1
//
//  Created by vaksakalov on 09.06.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

struct Person {
    let firstName: String
    let lastName: String
    
    // Поставил var и опционал, потому что хочу попробовать менять эти значения в дальнейшем
    var phone: String?
    var email: String?
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

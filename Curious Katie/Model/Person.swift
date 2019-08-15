//
//  Person.swift
//  Curious Katie
//
//  Created by Am GHAZNAVI on 10/08/2019.
//  Copyright © 2019 Am GHAZNAVI. All rights reserved.
//

import Foundation

// Persons Class.
struct Person: CustomStringConvertible {
    
    // Properties.
    var name: String
    var age: Int
    var location: String
    var interests: [Hobby]
    
    // Init.
    init(name: String, age: Int, location: String, interests: [Hobby]) {
    self.name = name
    self.age = age
    self.location = location
    self.interests = interests
    }
    //Custom type to print correctly.
    var description: String {
    return "\(self.name) \(self.age) \(self.location) \(self.interests)"
    }
}




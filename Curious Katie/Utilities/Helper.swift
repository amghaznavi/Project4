//
//  Helper.swift
//  Curious Katie
//
//  Created by Am GHAZNAVI on 10/08/2019.
//  Copyright © 2019 Am GHAZNAVI. All rights reserved.
//

import Foundation

class Helper {

// Init hobbies.
static let hobby01 = Hobby(title: "Basketball", difficultyLevel: DifficultyLevel.easy.rawValue)
static let hobby02 = Hobby(title: "Baseball", difficultyLevel: DifficultyLevel.hard.rawValue)
static let hobby03 = Hobby(title: "Football", difficultyLevel: DifficultyLevel.intermediate.rawValue)
static let hobby04 = Hobby(title: "YogaMarathon Running", difficultyLevel: DifficultyLevel.hard.rawValue)
static let hobby05 = Hobby(title: "Chess", difficultyLevel: DifficultyLevel.intermediate.rawValue)
static let hobby06 = Hobby(title: "Trivia", difficultyLevel: DifficultyLevel.easy.rawValue)
static let hobby07 = Hobby(title: "Writing",difficultyLevel: DifficultyLevel.hard.rawValue)
static let hobby08 = Hobby(title: "Stamps", difficultyLevel: DifficultyLevel.easy.rawValue)
static let hobby09 = Hobby(title: "Rare Books", difficultyLevel: DifficultyLevel.easy.rawValue)
static let hobby10 = Hobby(title: "Art", difficultyLevel: DifficultyLevel.easy.rawValue)
static let hobby11 = Hobby(title: "Travelling", difficultyLevel: DifficultyLevel.easy.rawValue)
static let hobby12 = Hobby(title: "Fishing", difficultyLevel: DifficultyLevel.intermediate.rawValue)

// Hobbies array list.
static var hobbiesArray = [hobby01, hobby02, hobby03, hobby04, hobby05, hobby06, hobby07, hobby08, hobby09, hobby10, hobby11, hobby12]

// Function to generate random hobbies.
static func generateRandomHobbies() -> [Hobby] {
        hobbiesArray.shuffle()
        let arraySlice = hobbiesArray.prefix(Int.random(in: 3...hobbiesArray.count))
        let newArray = Array(arraySlice)
        return newArray
    }

// Name array.
static var namesArray = ["Olivia", "Emma", "Aiden", "Ava", "Noah", "Liam", "Jackson", "Adam", "Ahmad", "Basit", "Amin", "Laila"]
static func generateRandomName() -> String {
        let index = Int.random(in: 0..<namesArray.count)
        let name = namesArray [index]
        namesArray.remove(at: index)
        return name
    }

// Location array.
static let locationsArray = ["Liverpool", "London", "Manchester", "Paris", "San Jose", "Jacksonville", "Chicago", "Liverpool", "Kabul", "Ghazni", "New Delhi", "Dubai"]

// Function to generate random location.
static func generateRandomLocation() -> String {
        return locationsArray.randomElement()!
    }

// Function to generate random age.
static func generateRandomAge() -> Int {
        return Int.random(in: 18...50)
    }
    
// Function to generate random person.
static func generateRandomPersons(num: Int) -> [Person] {
        var persons = [Person].init()
        for _ in 1...num {
            let p = Person(
            name: generateRandomName(),
            age: generateRandomAge(),
            location: generateRandomLocation(),
            interests: generateRandomHobbies())
            persons.append(p)
            }
            return persons
    }
}



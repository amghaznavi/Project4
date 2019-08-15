//
//  ViewController.swift
//  Curious Katie
//
//  Created by Am GHAZNAVI on 10/08/2019.
//  Copyright © 2019 Am GHAZNAVI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initGame()
        // Do any additional setup after loading the view.
    }
    
    // Function to initiate the game and print all statements.
    func initGame() {
        
        // Random participants.
        let persons = Helper.generateRandomPersons(num: Int.random(in: 2...12))
        var introductionStatement = "Hi, the players are as follows:"
        for i in 0..<(persons.count-1) {
            introductionStatement.append(" \(persons[i].name),")
        }
        introductionStatement.append(" \(String(describing: persons.last!.name))")
        introductionStatement.append(", and \(String(describing: persons.last!.name))")
        introductionStatement.append(".")
        print(introductionStatement)
        print("")
        print("<<<<<>>>>>")
        
        // Introductory statements for random participants.
        for person in persons {
        print("My name is \(person.name), \(person.age) of old and I'm from \(person.location).")
        print("My hobbies are as follows:")
        for i in person.interests {
            print("\(i.title) [difficulty level - \(i.difficultyLevel)]")
        }
        print("\n")
        print("<<<<<>>>>>")
        }
        
        // Difference hobbies.
        for i in 0..<persons.count {
        for j in i+1..<persons.count {
        let person1 = persons [i]
        let person2 = persons [j]
        let differences = person1.interests.difference(from: person2.interests)
        if (differences.count > 0) {
        if(differences.count == 1) {
            print("\(person1.name) and \(person2.name) can chat about the following hobby:")
        } else {
            print("\(person1.name) and \(person2.name) can chat about the following \(differences.count) hobbies:")
        }
        var count = 1
        for i in differences {
        print("\(count). \(i.title) [difficulty level - \(i.difficultyLevel)]")
        count = count + 1
        }
        print("__________")
        }}}
        
        // Difference hobbies count.
        for i in 0..<persons.count {
        for j in i+1..<persons.count {
        let person1 = persons [i]
        let person2 = persons [j]
        let differences = person1.interests.difference(from: person2.interests)
        if (differences.count > 0) {
        let statement2 = "\(person1.name) and \(person2.name) can be matched. They have \(differences.count) hobbies not matching."
        print(statement2)
        print("__________")
        }}}
        
    }
}


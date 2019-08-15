//
//  Interest.swift
//  Curious Katie
//
//  Created by Am GHAZNAVI on 10/08/2019.
//  Copyright © 2019 Am GHAZNAVI. All rights reserved.
//

import Foundation

//  Enum for dufficulty level.
enum DifficultyLevel: String {
    case hard = "Hard"
    case intermediate = "Intermediate"
    case easy = "Easy"
}

// Interests/Hobbies Class.
struct Hobby: CustomStringConvertible, Hashable {
    
    // Properties.
    var title: String
    var difficultyLevel: DifficultyLevel.RawValue
    
    // Init.
    init(title: String, difficultyLevel: DifficultyLevel.RawValue) {
    self.title = title
    self.difficultyLevel = difficultyLevel
    }
    // Custom type to print correctly.
    var description: String {
    return "\(self.title) (difficulty level) \(self.difficultyLevel)"
    }
}

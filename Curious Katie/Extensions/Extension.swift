//
//  Extension.swift
//  Curious Katie
//
//  Created by Am GHAZNAVI on 10/08/2019.
//  Copyright © 2019 Am GHAZNAVI. All rights reserved.
//

import Foundation

// Extension to find differences.
extension Array where Element: Hashable {
    func difference(from other: [Element]) -> [Element] {
    let thisSet = Set(self)
    let otherSet = Set(other)
    return Array(thisSet.symmetricDifference(otherSet))
    }}




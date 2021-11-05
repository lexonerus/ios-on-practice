//
//  RandomCount.swift
//  v005-MVC
//
//  Created by Alex Krzywicki on 05.11.2021.
//

import Foundation

class RandomCount {
    func getRandomCount(data: [Crypto]) -> Int {
        let randomCount = Int.random(in: 0 ..< data.count)
        return randomCount
    }
}

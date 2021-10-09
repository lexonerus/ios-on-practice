//
//  ViewOutputDelegate.swift
//  MVP-v002
//
//  Created by Alex Krzywicki on 09.10.2021.
//

import Foundation

protocol ViewOutputDelegate: AnyObject {
    func getData()
    func saveData()
    func getRandomCount()
}

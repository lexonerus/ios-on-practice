//
//  SalatModel.swift
//  SingletonExample
//
//  Created by Alexey Krzywicki on 01.01.2023.
//

import Foundation

class SalatModel: NSObject {
    
    static let shared = SalatModel()
    
    public var data = [String]()
    public var currentIndex = 0
    
    func addNewItem(salat: String) {
        data.append(salat)
    }
    
    func removeItem(salat: String) {
        data = data.filter { $0 != salat }
    }
    
    func editItem(oldSalat: String, newSalat: String) {
        let index = data.indices.filter { data[$0].localizedCaseInsensitiveContains(oldSalat) }
        data[index[0]] = newSalat
    }
    
    func deleteData() {
        data = [String]()
    }
    
    func fillWithTestData() {
        data = ["Оливье", "Мимоза", "Крабовый", "Селедка под шубой", "Домашний", "Мясной", "С кальмарами", "Винегрет"]
    }
    
}

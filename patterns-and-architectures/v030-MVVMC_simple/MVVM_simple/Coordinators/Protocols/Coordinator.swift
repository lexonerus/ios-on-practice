//
//  Coordinator.swift
//  MVVM_simple
//
//  Created by Alex Krzywicki on 13.01.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}


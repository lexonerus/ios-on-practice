//
//  Coordinator.swift
//  v003-Coordtinator
//
//  Created by Alex Krzywicki on 21.10.2021.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start()
}

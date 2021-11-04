//
//  ViewController.swift
//  v003-Coordtinator
//
//  Created by Alex Krzywicki on 21.10.2021.
//

import UIKit

class FirstViewController: UIViewController, Storyboardable {
    
    weak var coordinator: AppCoordinator? 

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First VC"
    }

    @IBAction func openSecondVC(_ sender: Any) {
        coordinator?.openSecondVC()
    }
    
    @IBAction func openThirdVC(_ sender: Any) {
        coordinator?.openThirdVC()
    }
    
}


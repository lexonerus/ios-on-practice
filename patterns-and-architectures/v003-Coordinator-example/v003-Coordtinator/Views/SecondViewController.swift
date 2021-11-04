//
//  SecondViewController.swift
//  v003-Coordtinator
//
//  Created by Alex Krzywicki on 21.10.2021.
//

import UIKit

class SecondViewController: UIViewController, Storyboardable {
    
    weak var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second VC"
    }

    @IBAction func openFirstVC(_ sender: Any) {
        coordinator?.openFirstVC()
    }
    @IBAction func openThirdVC(_ sender: Any) {
        coordinator?.openThirdVC()
    }
    
}

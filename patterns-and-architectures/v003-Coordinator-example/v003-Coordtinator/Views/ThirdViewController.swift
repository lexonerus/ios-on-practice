//
//  ThirdViewController.swift
//  v003-Coordtinator
//
//  Created by Alex Krzywicki on 21.10.2021.
//

import UIKit

class ThirdViewController: UIViewController, Storyboardable {
    
    weak var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third VC"

    }
    @IBAction func openFirstVC(_ sender: Any) {
        coordinator?.openFirstVC()
    }
    @IBAction func openSecondVC(_ sender: Any) {
        coordinator?.openSecondVC()
        
    }
    

}

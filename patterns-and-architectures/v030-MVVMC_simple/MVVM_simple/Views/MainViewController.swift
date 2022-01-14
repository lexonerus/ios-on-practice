//
//  MainViewController.swift
//  MVVM_simple
//
//  Created by Alex Krzywicki on 13.01.2022.
//

import UIKit

class MainViewController: UIViewController, Storyboardable {
    
    @IBOutlet var mainLabel: UILabel!
    @IBAction func aboutButtonPressed(_ sender: Any) {
        coordinator?.showDetail()
    }
    
    weak var coordinator: AppCoordinator?
    var viewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Main screen loaded")
        mainLabel.text = "Hello \(viewModel?.login ?? "Default")"
    }
    
}

//
//  DetailViewController.swift
//  MVVM_simple
//
//  Created by Alex Krzywicki on 13.01.2022.
//

import UIKit

class DetailViewController: UIViewController, Storyboardable {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    weak var coordinator: AppCoordinator?
    var viewModel: DetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Detail view loaded")
        updateUI()
    }
    
    func updateUI() {
        nameLabel.text = viewModel?.model?.name
        cityLabel.text = viewModel?.model?.city
        emailLabel.text = viewModel?.model?.email
        phoneLabel.text = viewModel?.model?.phone
    }
}

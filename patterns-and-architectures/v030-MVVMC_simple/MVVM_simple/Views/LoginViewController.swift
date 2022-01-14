//
//  ViewController.swift
//  MVVM_simple
//
//  Created by Alex Krzywicki on 23.12.2021.
//

import UIKit

class LoginViewController: UIViewController, Storyboardable {
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passField: UITextField!
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel!.userButtonPressed(login: (loginField.text ?? ""), password: passField.text ?? "")
        if viewModel!.isLoggedIn {
            coordinator?.isLoggedIn = viewModel!.isLoggedIn
            coordinator?.showMain(login: loginField.text ?? "")
        }
    }
    @IBOutlet var label: UILabel!
    
    var viewModel: LoginViewModel?
    var coordinator: AppCoordinator?
    
    func initialState() {
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    
    func bindViewModel() {
        viewModel!.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
        viewModel!.statusColor.bind({(statusColor) in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        })
    }
}


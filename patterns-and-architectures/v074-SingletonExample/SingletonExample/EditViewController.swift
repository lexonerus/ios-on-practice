//
//  EditViewController.swift
//  SingletonExample
//
//  Created by Alexey Krzywicki on 01.01.2023.
//

import UIKit

class EditViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    private let salats = SalatModel.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = salats.data[salats.currentIndex]
    }
    

    @IBAction func buttonPressed(_ sender: Any) {
        salats.editItem(oldSalat: salats.data[salats.currentIndex], newSalat: textField.text ?? "")
        navigationController?.popViewController(animated: true)
    }
}

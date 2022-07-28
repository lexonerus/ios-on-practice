//
//  ViewController.swift
//  SwiftUIintegration
//
//  Created by Alex Krzywicki on 10.07.2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = "Hello from UIKit View!"
        
    }

    @IBAction func pushButtonPressed(_ sender: Any) {
        let host = UIHostingController(rootView: SwiftUIView())
        navigationController?.pushViewController(host, animated: true)
    }
    
    @IBSegueAction func segueToSwiftUI(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView())
    }
    
}


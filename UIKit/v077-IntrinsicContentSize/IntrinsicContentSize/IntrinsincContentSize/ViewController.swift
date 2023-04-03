//
//  ViewController.swift
//  IntrinsincContentSize
//
//  Created by Alexey Krzywicki on 11.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelHeightCT: NSLayoutConstraint!
    @IBOutlet weak var label: UIDynamicLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. "
        
        labelHeightCT.constant = label.intrinsicContentSize.height
        label.layoutIfNeeded()
        
        print("intrinsicContentSize: \(label.intrinsicContentSize)")
        print("Frame: \(label.frame)")
    }


}

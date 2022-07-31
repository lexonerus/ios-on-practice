//
//  ViewController.swift
//  UIKitProgrammatically
//
//  Created by Alex Krzywicki on 24.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let newView = UIView()
    let textField = UITextField()
    let textField2 = UITextField()
    let frame = UIScreen.main.bounds
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        view.addSubview(newView)
        print(frame)
        
        let size = CGSize(width: 300, height: 300)
        let point = CGPoint(x: (frame.width/2-(size.width/2)), y: (frame.height/2-(size.height/2)))
        
        newView.frame = CGRect(origin: point, size: size)
        newView.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        
        newView.addSubview(textField)
        newView.addSubview(textField2)
        textField.frame = CGRect(x: 5, y: 5, width: 290, height: 50)
        textField.text = "x: \(newView.frame.minX) y: \(newView.frame.minY) w: \(newView.frame.width) h: \(newView.frame.height)"

        textField2.frame = CGRect(x: 5, y: 60, width: 290, height: 50)
        textField2.text = "x: \(newView.bounds.minX) y: \(newView.bounds.minY) w: \(newView.bounds.width) h: \(newView.bounds.height)"
        
        textField.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        textField2.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)

        
        
        
        
        
        
    }


}


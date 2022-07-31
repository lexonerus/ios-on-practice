//
//  ViewController.swift
//  UIKitProgrammatically
//
//  Created by Alex Krzywicki on 24.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let secondView = UIView()
    let textField = UITextField()
    var screenSize: CGRect = UIScreen.main.bounds
    var size: CGSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    //let screenFrame = UIScreen.main.frame

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(screenSize)
        
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        view.addSubview(secondView)
        
        secondView.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        //secondView.frame = CGRect(x: 30, y: 90, width: 300, height: 300)
        secondView.frame = CGRect(x: size.width/2-150, y: size.height/2-150, width: 300, height: 300)
        //secondView.center = view.center
        secondView.addSubview(textField)
        //secondView.bounds = CGRect(x: 15, y: 15, width: 300, height: 300)
        
        let frame = secondView.frame
        //textField.backgroundColor = .white
        textField.frame = CGRect(x: 5, y: 5, width: 290, height: 50)
        textField.text = " x: \(frame.minX) y: \(frame.minY) w: \(frame.width) h: \(frame.height)"
        textField.backgroundColor = .white
        
        print(secondView.frame)
        print(secondView.bounds)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        self.size = size
        secondView.frame = CGRect(x: size.width/2-150, y: size.height/2-150, width: 300, height: 300)
    }

    


}


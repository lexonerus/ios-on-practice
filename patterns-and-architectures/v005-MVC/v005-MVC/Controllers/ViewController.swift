//
//  ViewController.swift
//  v005-MVC
//
//  Created by Alex Krzywicki on 05.11.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var tickerLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    @IBAction func buttonPressed(_ sender: Any) {
        displayData(i: randomCount.getRandomCount(data: testData))
    }
    
    private var count = 0
    private var testData: [Crypto] = []
    private let randomCount = RandomCount()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let model = Crypto.testData
        setupData(with: model)
        setupInitialState()
    }
    
    func setupInitialState() {
        displayData(i: count)
    }
    
    func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }

    func displayData(i: Int) {
            if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
                nameLabel.text      = testData[i].name
                tickerLabel.text    = testData[i].ticker
                valueLabel.text     = String(testData[i].value)
            } else {
                print("Sorry, no data")
            }
    }
    

}


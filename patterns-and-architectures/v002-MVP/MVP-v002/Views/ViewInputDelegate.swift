//
//  ViewInputDelegate.swift
//  MVP-v002
//
//  Created by Alex Krzywicki on 09.10.2021.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with testData: ([Crypto]))
    func displayData(i: Int)
}

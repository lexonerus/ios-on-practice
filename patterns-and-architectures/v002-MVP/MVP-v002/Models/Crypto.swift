//
//  Crypto.swift
//  MVP-v002
//
//  Created by Alex Krzywicki on 09.10.2021.
//

import Foundation

struct Crypto {
    var name: String
    var ticker: String
    var value: Int
}

extension Crypto {
    static var testData = [
        Crypto(name: "Bitcion", ticker: "BTC", value: 55000),
        Crypto(name: "Etherium", ticker: "ETH", value: 3500),
        Crypto(name: "Ripple", ticker: "XRP", value: 589),
        Crypto(name: "Stellar", ticker: "XLM", value: 20),
        Crypto(name: "Algorand", ticker: "ALGO", value: 3)
    ]
}

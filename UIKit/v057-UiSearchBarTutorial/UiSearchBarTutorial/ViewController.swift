//
//  ViewController.swift
//  UiSearchBarTutorial
//
//  Created by Alex Krzywicki on 13.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    let data = ["Bitcoin", "Etherium", "Tether", "USD Coin", "Binance Coin", "Binance USD", "Cardano", "XRP", "Solana", "Polkadot"]
    var filteredData    = [String]()
    var isSearching     = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchBar.delegate     = self
        self.tableView.dataSource   = self
        
        
    }


}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        self.filteredData.removeAll()
        guard searchText != "" || searchText != " " else {
            print("empty search")
            return
        }
        
        for item in data {
            let text = searchText.lowercased()
            let isArrayContain = item.lowercased().range(of: text)
            
            if isArrayContain != nil {
                print("Search complete")
                filteredData.append(item)
            }
        }
        
        print(filteredData)
        
        if searchBar.text == "" {
            isSearching = false
            tableView.reloadData()
        } else {
            isSearching = true
            filteredData = data.filter({$0.contains(searchBar.text ?? "")})
            tableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearching {
            return filteredData.count
        } else {
            return data.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if isSearching {
            cell.textLabel?.text = filteredData[indexPath.row]
        } else {
            cell.textLabel?.text = data[indexPath.row]
        }
        return cell
    }
    
    
}

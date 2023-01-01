//
//  SalatCell.swift
//  SingletonExample
//
//  Created by Alexey Krzywicki on 01.01.2023.
//

import UIKit

class SalatCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    static let id = "SalatCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

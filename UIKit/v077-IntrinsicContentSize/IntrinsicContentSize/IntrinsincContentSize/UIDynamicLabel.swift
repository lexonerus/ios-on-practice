//
//  UIDynamicLabel.swift
//  IntrinsincContentSize
//
//  Created by Alexey Krzywicki on 11.03.2023.
//

import Foundation
import UIKit

class UIDynamicLabel: UILabel {
    override var intrinsicContentSize: CGSize {
        let size = self.sizeThatFits(CGSize(width: self.frame.size.width, height: CGFloat.greatestFiniteMagnitude))
        return CGSize(width: size.width, height: size.height + 5)
    }
}

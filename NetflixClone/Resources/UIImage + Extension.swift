//
//  UIImage + Extension.swift
//  NetflixClone
//
//  Created by Назар Жиленко on 09.12.2022.
//

import Foundation
import UIKit

extension UIImage {
    enum AssetIdentifier: String {
        case house = "house"
        case playCircle = "play.circle"
        case magnifyingGlass = "magnifyingglass"
        case arrowDownToLine = "arrow.down.to.line"
    }
    
    convenience init(assetIdentifier: AssetIdentifier) {
        self.init(systemName: assetIdentifier.rawValue)!
    }
}

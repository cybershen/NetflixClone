//
//  String + Extension.swift
//  NetflixClone
//
//  Created by Назар Жиленко on 09.12.2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}

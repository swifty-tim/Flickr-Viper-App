//
//  String+Ext.swift
//  FlickrViperTest
//
//  Created by Timothy Barnard on 05/06/2017.
//  Copyright © 2017 Timothy Barnard. All rights reserved.
//

import Foundation

extension String {
    func capitalizingFirstLetter() -> String {
        let first = String(characters.prefix(1)).capitalized
        let other = String(characters.dropFirst())
        return first + other
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}

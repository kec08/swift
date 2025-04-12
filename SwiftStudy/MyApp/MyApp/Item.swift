//
//  Item.swift
//  MyApp
//
//  Created by 김은찬 on 4/5/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

//
//  Item.swift
//  Landmarks
//
//  Created by 김은찬 on 3/31/25.
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

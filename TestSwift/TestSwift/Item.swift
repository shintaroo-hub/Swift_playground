//
//  Item.swift
//  TestSwift
//
//  Created by Kaloysius Rex on 7/26/24.
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

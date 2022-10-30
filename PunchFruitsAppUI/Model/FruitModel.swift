//
//  FruitModel.swift
//  PunchFruitsAppUI
//
//  Created by Avijeet Pandey on 30/10/22.
//

import SwiftUI

// MARK: - Fruit
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
}

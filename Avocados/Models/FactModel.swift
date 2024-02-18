//
//  FactModel.swift
//  Avocados
//
//  Created by Ivan Romero on 18/02/2024.
//

import Foundation

struct Fact: Identifiable {
    let id: UUID = UUID()
    let image: String
    let content: String
}

//
//  RecipeModel.swift
//  Avocados
//
//  Created by Ivan Romero on 18/02/2024.
//

import Foundation

struct Recipe: Identifiable {
    let id: UUID = UUID()
    let title: String
    let headline: String
    let image: String
    let rating: Int
    let serves: Int
    let preparation: Int
    let cooking: Int
    let instructions: [String]
    let ingredients: [String]
}

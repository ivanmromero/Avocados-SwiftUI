//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Ivan Romero on 18/02/2024.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundStyle(.gray)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    RecipeCookingView(recipe: recipesData[0])
        .padding()
}

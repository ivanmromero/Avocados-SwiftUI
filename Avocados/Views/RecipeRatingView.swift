//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Ivan Romero on 18/02/2024.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundStyle(.yellow)
            }
        }
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    RecipeRatingView(recipe: recipesData[0])
        .padding()
}

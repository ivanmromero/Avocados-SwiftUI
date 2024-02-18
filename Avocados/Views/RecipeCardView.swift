//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Ivan Romero on 18/02/2024.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe
    let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
            
                .overlay(alignment: .topTrailing, content: {
                    Image(systemName: "bookmark")
                        .font(.title.weight(.light))
                        .foregroundStyle(.white)
                        .imageScale(.small)
                        .shadow(color: .colorBlackTransparentLight, radius: 2, x: 0, y: 0)
                        .padding(.trailing, 20)
                        .padding(.top, 22)
                })
            
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif, weight: .bold))
                    .foregroundStyle(.colorGreenMedium)
                    .lineLimit(1)
                
                // HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundStyle(.gray)
                    .italic()
                
                // RATES
                RecipeRatingView(recipe: recipe)
                
                // COOKING
                RecipeCookingView(recipe: recipe)
                
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .clipShape(.rect(cornerRadius: 12))
        .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 0)
        .onTapGesture {
            hapticImpact.impactOccurred()
            showModel = true
        }
        .sheet(isPresented: $showModel) {
            RecipeDetailView(recipe: recipe)
        }
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    RecipeCardView(recipe: recipesData[0])
        .padding()
}

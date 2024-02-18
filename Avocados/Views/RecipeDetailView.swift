//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Ivan Romero on 18/02/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe
    @State private var pulsate: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                .scaledToFit()
                
                Group {
                    // TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.colorGreenAdaptive)
                        .padding(.top, 10)
                    
                    // RATING
                    RecipeRatingView(recipe: recipe)
                    
                    // COOKING
                    RecipeCookingView(recipe: recipe)
                    
                    // INGREDIENTS
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            VStack(alignment: .leading, spacing: 5, content: {
                                Text(ingredient)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            })
                        }
                    }
                    
                    // INSTRUCTIONS
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { instruction in
                        VStack(alignment: .center, spacing: 5, content: {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(.title.weight(.ultraLight))
                                .foregroundStyle(.colorGreenAdaptive)
                            
                            Text(instruction)
                                .lineLimit(nil)
                                .font(.system(.body, design: .serif))
                                .multilineTextAlignment(.center)
                                .frame(minHeight: 100)
                        })
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
        .overlay(alignment: .topTrailing) {
            Button {
                
            } label: {
                Image(systemName: "chevron.down.circle.fill")
                    .font(.title)
                    .foregroundStyle(.white)
                    .shadow(radius: 4)
                    .opacity(pulsate ? 1 : 0.6)
                    .scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
                    .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: UUID())
                    
            }
            .padding(.trailing, 20)
            .padding(.top, 24)

        }
        .onAppear {
            pulsate.toggle()
        }
    }
}

// MARK: - PREVIEW
#Preview {
    RecipeDetailView(recipe: recipesData[0])
}

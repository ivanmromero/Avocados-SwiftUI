//
//  DishesView.swift
//  Avocados
//
//  Created by Ivan Romero on 14/02/2024.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            
            // First Column
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Image(.iconToasts)
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                
                Divider()
                
                HStack {
                    Image(.iconTacos)
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }
                
                Divider()
                
                HStack {
                    Image(.iconSalads)
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }
                
                Divider()
                
                HStack {
                    Image(.iconHalfavo)
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }
            }
            
            // Second Column
            VStack(alignment: .center, spacing: 4) {
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
      
                
                HStack {
                    Divider()
                }
            }
            
            // Thirt Column
            VStack(alignment: .trailing, spacing: 4) {
                HStack {
                    Text("Sandwich")
                    Spacer()
                    Image(.iconSandwiches)
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()
                
                HStack {
                    Text("Soup")
                    Spacer()
                    Image(.iconSoup)
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()
                
                HStack {
                    Text("Smoothie")
                    Spacer()
                    Image(.iconSmoothies)
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()
                
                HStack {
                    Text("Guacamole")
                    Spacer()
                    Image(.iconGuacamole)
                        .resizable()
                        .modifier(IconModifier())
                }
                
                
            }
            
        }
        .font(.system(.callout, design: .serif))
        .foregroundStyle(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}



#Preview(traits: .fixedLayout(width: 414, height: 280)) {
    DishesView()
}

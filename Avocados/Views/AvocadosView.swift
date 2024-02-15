//
//  AvocadosView.swift
//  Avocados
//
//  Created by Ivan Romero on 14/02/2024.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - PROPERTIES
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(.avocado)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: .colorBlackTransparentDark, radius: 12, x: 0, y: 8)
                .scaleEffect(pulsateAnimation ? 1 : 0.9)
                .opacity(pulsateAnimation ? 1 : 0.9)
                .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(.white)
                .shadow(color: .colorBlackTransparentDark, radius: 4, x: 0, y: 4)
                Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundStyle(.colorGreenLight)
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            
            Spacer()
        }
        .background(
            Image(.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .ignoresSafeArea()
        .onAppear(perform: {
            pulsateAnimation.toggle()
        })
    }
}

#Preview {
    AvocadosView()
}

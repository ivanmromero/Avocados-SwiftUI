//
//  FactsView.swift
//  Avocados
//
//  Created by Ivan Romero on 18/02/2024.
//

import SwiftUI

struct FactsView: View {
    // MARK: - PROPERTIES
    let fact: Fact
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing,10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(
                    LinearGradient(colors: [.colorGreenMedium, .colorGreenLight], startPoint: .leading, endPoint: .trailing)
                )
                .clipShape(.rect(cornerRadius: 12))
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
            .foregroundStyle(.white)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                Circle()
                    .fill(LinearGradient(colors: [.colorGreenMedium, .colorGreenLight], startPoint: .trailing, endPoint: .leading))
                    .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                Circle()
                    .fill(.colorAppearanceAdaptive)
                    .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
        }
        
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 400, height: 220)) {
    FactsView(fact: factsData[0])
}

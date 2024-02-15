//
//  ContentView.swift
//  Avocados
//
//  Created by Ivan Romero on 14/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            // HEADER
            ScrollView(.horizontal) {
                HeaderView()
            }
            .scrollIndicators(.hidden)
            
            // FOOTER
            VStack(alignment: .center, spacing: 20) {
                Text("All About Avocados")
                    .font(.system(.title, design: .serif, weight: .bold))
                    .foregroundStyle(.colorGreenAdaptive)
                    .padding(8)
                Text("Everthing you wanted to know about avocados but were too afraid to ask.")
                    .font(.system(.body, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.gray)
            }
            .frame(maxWidth: 640)
            .padding()
            .padding(.bottom, 85)
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}

//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Ivan Romero on 14/02/2024.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningData) { ripening in
                        RipeningView(ripening: ripening)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                
                Spacer()
            }
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
    }
}

// MARK: - PREVIEW
#Preview {
    RipeningStagesView()
}

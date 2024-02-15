//
//  AppView.swift
//  Avocados
//
//  Created by Ivan Romero on 14/02/2024.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            Group {
                AvocadosView()
                    .tabItem {
                        Image(.tabiconBranch)
                        Text("Avocados")
                    }
                
                ContentView()
                    .tabItem {
                        Image(.tabiconBook)
                        Text("Recipes")
                    }
                
                RipeningStagesView()
                    .tabItem {
                        Image(.tabiconAvocado)
                        Text("Ripening")
                    }
                
                SettingsView()
                    .tabItem {
                        Image(.tabiconSettings)
                        Text("Settings")
                    }
            }
            .toolbarBackground(.visible, for: .tabBar)
        }
        .tint(.primary)
    }
}

#Preview {
    AppView()
}

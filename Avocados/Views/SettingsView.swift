//
//  SettingsView.swift
//  Avocados
//
//  Created by Ivan Romero on 14/02/2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            // HEADER
            VStack(alignment: .center, spacing: 5) {
                Image(.avocado)
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif, weight: .bold))
                    .foregroundStyle(.colorGreenAdaptive)
            }
            .padding()
            
            Form(content: {
                // SECTION 1
                Section {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                    
                } header: {
                    Text("General Settings")
                }

                // SECTION 2
                Section {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("Iphone & Ipad")
                        }
                        HStack {
                            Text("Developer")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("Ivan Manuel Romero")
                        }
                        HStack {
                            Text("Version")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("🚀 Happy coding!")
                        }
                    }

                    
                } header: {
                    Text("Application")
                }
            })
            
        }
        .frame(maxWidth: 640)
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsView()
}

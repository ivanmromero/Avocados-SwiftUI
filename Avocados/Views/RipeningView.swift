//
//  RipeningView.swift
//  Avocados
//
//  Created by Ivan Romero on 18/02/2024.
//

import SwiftUI

struct RipeningView: View {
    // MARK: - PROPERTIES
    let ripening: Ripening
    @State private var slideInAnimation: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(content: {
                    Circle()
                        .fill(.colorGreenLight)
                        .frame(width: 110, height: 110, alignment: .center)
                })
                .background(content: {
                    Circle()
                        .fill(.colorAppearanceAdaptive)
                        .frame(width: 120, height: 120, alignment: .center)
                })
                .zIndex(1)
                .animation(.easeInOut(duration: 1), value: slideInAnimation)
                .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10) {
                // STAGE
                VStack(alignment: .center, spacing: 0, content: {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif, weight: .bold))
                    
                    Text("STAGE")
                        .font(.system(.body, design: .serif, weight: .heavy))
                })
                .foregroundStyle(.colorGreenMedium)
                .padding(.top, 65)
                .frame(width: 180)
                
                // TITLE
                Text(ripening.title)
                    .font(.system(.title, design: .serif, weight: .bold))
                    .foregroundStyle(.colorGreenMedium)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(colors: [.white, .colorGreenLight], startPoint: .top, endPoint: .bottom))
                            .shadow(color: .colorBlackTransparentLight, radius: 6, x: 0, y: 6)
                    )
                
                // DESCRIPTION
                Spacer()
                Text(ripening.description)
                    .foregroundStyle(.colorGreenDark)
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                
                // RIPENESS
                Text(ripening.ripeness.uppercased())
                    .foregroundStyle(.white)
                    .font(.system(.callout, design: .serif, weight: .bold))
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(colors: [.colorGreenMedium, .colorGreenDark], startPoint: .top, endPoint: .bottom))
                            .shadow(color: .colorBlackTransparentLight, radius: 6, x: 0, y: 6)
                    }
                
                // INSTRUCTION
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundStyle(.colorGreenLight)
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                
                Spacer()
                
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(
                LinearGradient(colors: [.colorGreenLight, .colorGreenMedium], startPoint: .top, endPoint: .bottom)
            )
            .clipShape(.rect(cornerRadius: 20))
        }
        .ignoresSafeArea(.all)
        .onAppear {
            slideInAnimation = true
        }
    }
}

// MARK: - PREVIEW
#Preview {
    RipeningView(ripening: ripeningData[1])
}

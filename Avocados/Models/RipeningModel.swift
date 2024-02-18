//
//  RipeningModel.swift
//  Avocados
//
//  Created by Ivan Romero on 18/02/2024.
//

import SwiftUI

struct Ripening: Identifiable {
    let id: UUID = UUID()
    let image: String
    let stage: String
    let title: String
    let description: String
    let ripeness: String
    let instruction: String
}

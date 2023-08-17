//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Ferhat Taş on 15.08.2023.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ? LinearGradient(
                    colors: [.customGrayMedium, .customGrayLight],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ) : LinearGradient(
                    colors: [.customGrayLight, .customGrayMedium],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .cornerRadius(40)
    }
}

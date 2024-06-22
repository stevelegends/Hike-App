//
//  GradientButtonStyle.swift
//  HikeApp
//
//  Created by hiep on 22/06/2024.
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
                // conditional statement with nil coalescing
                // condition ? a : b
                configuration.isPressed ?
                // a: when user pressed the button
                LinearGradient(colors: [
                    .customGrayMedium,
                    .customGrayLight
                ], startPoint: .top, endPoint: .bottom)
                :
                // b: when the button is not pressed
                LinearGradient(colors: [
                    .customGrayLight,
                    .customGrayMedium
                ], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}

//
//  CardView.swift
//  HikeApp
//
//  Created by hiep on 21/06/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        
                        Spacer()
                        
                        Button {
                            // ACTION: show a sheet
                            
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                // MARK: - main content
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    .colorIndigoMedium,
                                    .colorSalmonLight
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                // MARK: - footer
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}

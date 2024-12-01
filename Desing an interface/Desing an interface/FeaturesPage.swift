//
//  FeaturesPage.swift
//  Desing an interface
//
//  Created by Иван Гаврилов on 01.12.2024.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
            FeaturesCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left")
            
            FeaturesCard(iconName: "quote.bubble.fill", description: "Short summary")
            
            Spacer()
        }
//        .border(.red, width: 2)
        .padding()
//        .border(.tint, width: 2)
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}

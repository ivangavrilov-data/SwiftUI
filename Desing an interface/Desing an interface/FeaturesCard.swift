//
//  FeaturesCard.swift
//  Desing an interface
//
//  Created by Иван Гаврилов on 01.12.2024.
//

import SwiftUI

struct FeaturesCard: View {
    let iconName: String
    let description: String
    
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50)
                .padding(.trailing, 10)
            
            Text(description)
            
            Spacer()
        }
        .padding()
//        .border(.red, width: 2)
        .background(RoundedRectangle(cornerRadius: 12)
            .foregroundStyle(.tint)
            .opacity(0.25)
            .brightness(-0.4)
        )
        .foregroundStyle(.white)
    }
}

#Preview {
    FeaturesCard(iconName: "person.2.crop.square.stack.fill",
                 description: "A multi-line description about a feature paired with the image on the left" )
}

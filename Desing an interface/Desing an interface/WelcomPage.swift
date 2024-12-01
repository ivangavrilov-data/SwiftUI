//
//  WelcomPage.swift
//  Desing an interface
//
//  Created by Иван Гаврилов on 01.12.2024.
//

import SwiftUI

struct WelcomPage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
//            .border(.red, width: 1.5)
//            .padding()
            
            Text("Welcom to MyApp")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
//                .border(.black, width: 1.5)
            
            Text("Description Text")
                .font(.title2)
//                .border(.black, width: 1.5)
        }
//        .border(.orange, width: 1.5)
        .padding()
//        .border(.purple, width: 1.5)
    }
}

#Preview {
    WelcomPage()
}

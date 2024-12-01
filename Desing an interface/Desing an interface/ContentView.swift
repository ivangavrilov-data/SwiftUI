//
//  ContentView.swift
//  Desing an interface
//
//  Created by Иван Гаврилов on 01.12.2024.
//

import SwiftUI

let gradientColors: [Color] = [.gradientTop, .gradientBottom]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomPage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}

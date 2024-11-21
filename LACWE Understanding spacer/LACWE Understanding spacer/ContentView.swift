//
//  ContentView.swift
//  LACWE Understanding spacer
//
//  Created by Иван Гаврилов on 21.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Spacer()
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}

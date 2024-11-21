//
//  ContentView.swift
//  LACWE Understanding test
//
//  Created by Иван Гаврилов on 21.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(
                    .system(
                        size: 40,
                        weight: .bold,
                        design: .default
                        )
                    )
            Text("Hello, world!")
                .font(
                    .system(size: 40,
                            weight: .thin,
                            design: .default
                           
                           )
                )
            Text("Hello, world!")
                .font(.title2)
            Text("Hello, world!")
                .font(.title3)
            Text("Hello, world!")
                .font(.headline)
            
            Spacer()
            
            Text("Hello, world!")
                .font(.body)
            Text("Hello, world!")
                .font(.callout)
            Text("Hello, world!")
                .font(.subheadline)
            Text("Hello, world!")
                .font(.footnote)
            Text("Hello, world!")
                .font(.caption)
            Text("Hello, world!")
                .font(.caption2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

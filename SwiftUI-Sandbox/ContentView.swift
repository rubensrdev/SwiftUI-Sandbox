//
//  ContentView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 7/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
			Image(systemName: "iphone")
				.resizable()
				.scaledToFit()
				.frame(height: 80)
            Text("Hello, world!")
				.font(.largeTitle)
				.bold()
			Text("The idea behind this app is to experiment with all the possibilities and ways of working with SwiftUI.")
				.font(.subheadline)
				.foregroundStyle(.secondary)
        }
		.padding()
    }
}

#Preview {
    ContentView()
}

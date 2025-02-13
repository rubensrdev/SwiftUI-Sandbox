//
//  LabelView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 13/2/25.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
		VStack {
			// With SF symbol
			Label("With SF Symbol", systemImage: "arrowtriangle.down.circle")
			Divider()
			
			// With custom image
			Label("With Custom Image", image: .pattern)
			Divider()
			Label {
				Text("With Custom Image")
			} icon: {
				Image(.pattern)
					.resizable()
					.frame(height: 50)
			}
			Divider()
			// With style variations
			HStack {
				Label("Messages", systemImage: "message.fill")
					.labelStyle(.titleOnly)
				Spacer()
				Label("Messages", systemImage: "message.fill")
					.labelStyle(.iconOnly)
			}
			.padding()
			Divider()
			
			// With modifiers
			Label("With modifiers", systemImage: "arrow.down.circle.fill")
				.font(.title)
				.fontWeight(.heavy)
				.foregroundStyle(.mint)
				.padding()
				.background(RoundedRectangle(cornerRadius: 6).fill(.purple))
			
			// With other direction
			Label("Change the direction", systemImage: "arrow.left.circle")
				.environment(\.layoutDirection, .rightToLeft)
				.foregroundStyle(.red)
				.bold()
				
		}
    }
}

#Preview {
    LabelView()
}

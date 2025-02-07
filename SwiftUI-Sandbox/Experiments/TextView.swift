//
//  TextView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 7/2/25.
//

import SwiftUI

struct TextView: View {
    var body: some View {
		VStack {
			// Basic text
			Text("Hello from the TextView!")
			Divider()
			
			// With font and weight
			Text("Text with custom font and weight")
				.font(.title)
				.fontWeight(.bold)
			Text("Other text with custom font and weight")
				.font(.system(size: 26, weight: .thin, design: .rounded))
			Divider()
			
			// With color
			Text("Text with custom color")
				.foregroundStyle(.blue)
			Divider()
			
			// With gradient
			Text("Text with gradient")
				.foregroundStyle(.linearGradient(colors: [.cyan, .purple, .pink], startPoint: .leading, endPoint: .trailing))
			Divider()
			
			// With weight and style
			Text("Text with custom weight and style")
				.fontWeight(.heavy)
				.italic()
				.underline()
			Divider()
			
			// With multiline
			Text("There is a text with much more content than the others, so it will be displayed in multiple lines. This is a test to check how the text behaves when it is too long.")
				.multilineTextAlignment(.center)
				.lineLimit(2)
				.truncationMode(.tail)
			Divider()
				
			// With spacing and kerning
			Text("Text with custom spacing and kerning")
				.kerning(5)
				.lineSpacing(15)
			
		}
		.padding()
    }
}

#Preview {
    TextView()
}

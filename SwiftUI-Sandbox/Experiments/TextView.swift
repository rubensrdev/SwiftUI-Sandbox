//
//  TextView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 7/2/25.
//

import SwiftUI

struct TextView: View {
	@State private var isVisible = false
    var body: some View {
		ScrollView {
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
					.underline(pattern: .dot, color: .orange)
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
				
				// With concatenation
				Text("This is a text with a ")
					.foregroundStyle(.green)
				+ Text("concatenated text")
					.foregroundStyle(.red)
				Divider()
				
				// With markdown
				Text("This is a text with **markdown**. Its content can contain *italic text* and **bold text** and `monospaced text`. Too it can have [links](https://www.apple.com)")
				Divider()
				
				// With date and numbers
				Text(Date(), style: .date)
				Text(35.99, format: .currency(code: "EUR"))
				Divider()
				
				// With shadow and opacity
				Text("Text with shadow and opacity")
					.shadow(color: .indigo, radius: 8, x: 3, y: 3)
				Divider()
				
				// With rotation and scale
				Text("Text with rotation and scale")
					.rotationEffect(.degrees(10))
					.scaleEffect(1.2)
					.padding(.vertical)
					.foregroundStyle(.mint)
					.bold()
				Divider()
				
				// With a custom font
				Text("Bang Bang!")
					.font(.custom("Western", size: 32))
				Divider()
				
				// With image pattern
				Text("Text with pattern")
					.font(.largeTitle)
					.fontWeight(.heavy)
					.fontWidth(.expanded)
					.foregroundStyle(ImagePaint(image: Image(.pattern)))
				
				// With animation
				Text("Text with animation")
					.foregroundStyle(.green)
					.font(.title)
					.bold()
					.scaleEffect(isVisible ? 1.2 : 1)
					.opacity(isVisible ? 1 : 0)
					.animation(.smooth(duration: 1).repeatForever(), value: isVisible)
					.onAppear {
						isVisible.toggle()
					}
			}
			.padding()
		}
    }
}

#Preview {
    TextView()
}

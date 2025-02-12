//
//  ButtonView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 12/2/25.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
		VStack {
			
			// Basic button
			Button("Basic button") {
				print("Button tapped!")
			}
			Divider()
			
			// With system styles
			HStack {
				Button("Default") {
					print("Default button tapped!")
				}
				
				Button("Bordered") {
					print("Bordered button tapped!")
				}
				.buttonStyle(.bordered)
				
				Button("Prominent") {
					print("Prominent button tapped!")
				}
				.buttonStyle(.borderedProminent)
				
				Button("Plain") {
					print("Plain button tapped!")
				}
				.buttonStyle(.plain)
			}
			Divider()
			
			// With custom styles
			HStack {
				Button("Custom button") {
					print("Custom button tapped!")
				}
				.padding()
				.background(.indigo)
				.foregroundStyle(.white)
				.clipShape(.capsule)
				
				Button("Custom button") {
					print("Custom button tapped!")
				}
				.padding()
				.background(.yellow)
				.foregroundStyle(.pink)
				.fontWeight(.light)
				.clipShape(RoundedRectangle(cornerRadius: 10))
			}
			Divider()
			
			// With image
			Button("With image", image: .pattern) {
				print("button with image tapped!")
			}
			Divider()
			
			// With SF Symbol
			Button("With SF Symbol", systemImage: "paperplane") {
				print("button with SF Symbol tapped!")
			}
			Divider()
			
			// With icon and text
			Button {
				print("button with icon and text tapped!")
			} label: {
				Label("With icon and text", systemImage: "arrow.forward.square")
			}
			Divider()
			
			// Only with image
			Button {
				print("Only with image tapped!")
			} label: {
				Image(.pattern)
					.resizable()
					.scaledToFit()
					.frame(width: 100)
					.clipShape(.buttonBorder)
			}
			Divider()
			
			// With image and text
			Button {
				print("Only with image tapped!")
			} label: {
				ZStack {
					Image(.pattern)
						.resizable()
						.scaledToFit()
						.frame(width: 120)
						.clipShape(.buttonBorder)
					Text("Overlay text")
						.foregroundStyle(.black)
						.bold()
				}
			}
			
			// Disabled button
			Button {
				
			} label: {
				Label("Now disabled", systemImage: "exclamationmark.triangle")
			}
			.buttonStyle(.bordered)
			.disabled(true)

			
		}
    }
}

#Preview {
    ButtonView()
}

//
//  ImageView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 10/2/25.
//

import SwiftUI

struct ImageView: View {
	
	@State private var isScaled = false
	@State private var showImage = false
	
	var body: some View {
		
		// We can show images using Image and load them from different sources
		ScrollView {
			// Image from assets
			Image("forest")
				.resizable()
				.scaledToFit()
				.frame(height: 350)
			Divider()
			
			// Image from SF Symbols
			Image(systemName: "widget.large")
				.resizable()
				.scaledToFit()
				.frame(height: 50)
				.foregroundStyle(.mint)
			Divider()
			
			// Image from URL
			AsyncImage(url: URL(string: "https://img.freepik.com/vector-gratis/fondo-primavera-dibujado-mano-flores_23-2148822584.jpg?t=st=1739181363~exp=1739184963~hmac=c382f3cb3936f51c9e5d51c1160a98255ff2ad8cbab8eb09742105d9b41f49e9&w=900")) { image in
				
				image
					.resizable()
					.scaledToFit()
					.frame(height: 200)
				
			} placeholder: {
				ProgressView("Loading image...")
			}
			Divider()
			
			// With resizable we can change the size of the image
			Image("forest")
				.resizable()
			Divider()
			
			// With scaled to fit we can maintains proportion within the frame
			Image("forest")
				.resizable()
				.scaledToFit()
			Divider()
			
			// With scaled to fill we can fill the frame, but you can crop it
			Image("forest")
				.resizable()
			Divider()
			
			// With frame we can set the size of the image
			Image("forest")
				.resizable()
				.scaledToFit()
				.frame(width: 200, height: 200)
			Divider()
			
			// Image with opacity
			Image("forest")
				.resizable()
				.scaledToFit()
				.frame(width: 200, height: 200)
				.opacity(0.3)
			Divider()
			
			// With shape, border and shadow
			Image("forest")
				.resizable()
				.scaledToFit()
				.frame(width: 200)
				.clipShape(Circle())
				.overlay {
					Circle()
						.stroke(.green, lineWidth: 3)
				}
				.shadow(radius: 10)
			Divider()
			
			// With blend mode to blend with the background and create transparencies and fusions
			Image("forest")
				.resizable()
				.scaledToFit()
				.frame(width: 200)
				.blendMode(.multiply)
			Divider()
			
			// With color for symbol images
			Image(systemName: "star.fill")
				.resizable()
				.scaledToFit()
				.frame(width: 100)
				.foregroundStyle(.yellow)
			Divider()
			
			// With blur
			Image("forest")
				.resizable()
				.scaledToFit()
				.frame(width: 200)
				.blur(radius: 5)
			Divider()
			
			// With grayscale
			Image("forest")
				.resizable()
				.scaledToFit()
				.frame(width: 200)
				.grayscale(100)
			Divider()
			
			// With rotation
			Image("forest")
				.resizable()
				.scaledToFit()
				.frame(width: 200)
				.rotationEffect(.degrees(25))
			Divider()
			
			// With scaled animation
			Image("forest")
				.resizable()
				.scaledToFit()
				.frame(width: 200)
				.scaleEffect(isScaled ? 1.5 : 1)
				.animation(.spring(response: 0.5, dampingFraction: 0.5), value: isScaled)
				.onTapGesture {
					isScaled.toggle()
				}
			Divider()
			
			// With transition to show image
			VStack {
				Button {
					withAnimation {
						showImage.toggle()
					}
				} label: {
					Text(showImage ? "Hide image" : "Show image")
						.foregroundStyle(.primary)
						
				}
				
				if showImage {
					Image("forest")
						.resizable()
						.scaledToFit()
						.frame(width: 200)
						.transition(.scale)
				}
			}
			Divider()
		}
		
		
	}
}

#Preview {
	ImageView()
}

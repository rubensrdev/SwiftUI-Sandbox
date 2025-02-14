//
//  LabeledContent.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 13/2/25.
//

import SwiftUI

struct LabeledContentView: View {
	@State private var notificationsEnabled = true
	@State private var volume: Double = 65
	@State private var dateOfBirth = Date()
	var body: some View {
		ScrollView {
			VStack {
				// Basic Labeled Content
				LabeledContent("Username", value: "Rubén")
				Divider()
				
				// With style
				LabeledContent("Animal") {
					Text("Dog (🐶)")
						.font(.headline)
						.foregroundStyle(.brown)
				}
				Divider()
				
				// With background
				LabeledContent("Dev level", value: "Padawan")
					.padding()
					.background(.blue.opacity(0.1))
					.clipShape(RoundedRectangle(cornerRadius: 12))
				Divider()
				
				// With SF Symbol
				LabeledContent {
					Text("Iphone 15")
				} label: {
					Label("Device", systemImage: "iphone")
				}
				
			}
			.padding()
			Divider()
			
			// In List
			List {
				LabeledContent("Email", value: "user@mail.com")
				LabeledContent("Phone", value: "+34 123 456 789")
				LabeledContent("Location") {
					Text("Jaén")
						.foregroundStyle(.purple)
				}
			}
			.frame(height: 200)
			.padding()
			Divider()
			
			VStack {
				// With Image
				LabeledContent("Image") {
					Image(.forest)
						.resizable()
						.scaledToFit()
						.frame(width: 50)
						.clipShape(Circle())
				}
				Divider()
				
				// With formatted text
				LabeledContent("Date", value: Date(), format: .dateTime.day().month().year())
				LabeledContent("Money", value: 1987.55, format: .currency(code: "EUR"))
				Divider()
				
				// With toogle
				LabeledContent("Notifications") {
					Toggle("", isOn: $notificationsEnabled)
						.labelsHidden()
				}
				Divider()
				
				// With slider
				LabeledContent("Volume") {
					Slider(value: $volume, in: 0...100, step: 1)
				}
				Divider()
				
				//  With picker
				LabeledContent("Date of birth") {
					DatePicker("", selection: $dateOfBirth, displayedComponents: .date)
						.labelsHidden()
				}
				Divider()
				
				// With navigation
				LabeledContent("More info") {
					NavigationLink(destination: {
						Text("View more view")
					}, label: {
						Text("View more...")
							.foregroundStyle(.blue)
					})
				}
			}
			.padding()
			
			
			
		}
	}
}

#Preview {
	LabeledContentView()
}

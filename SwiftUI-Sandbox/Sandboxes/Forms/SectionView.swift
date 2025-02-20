//
//  SectionView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 18/2/25.
//

import SwiftUI

struct SectionView: View {
	@State private var isExpanded = false
	@State private var counter = 23
	var body: some View {
		// basic section in Form
		Form {
			Section {
				LabeledContent("Name", value: "Idril")
				LabeledContent("Species", value: "Dog")
			} header: {
				Text("Animal Information")
			} footer: {
				Text("This is the information of the animal.")
			}
			
		}
		
		// basic section in List
		List {
			Section {
				LabeledContent("Title", value: "The Lord of the Rings")
				LabeledContent("Title", value: "The Hobbit")
			} header: {
				Text("Tolkien books")
			}
			Section {
				LabeledContent("Title", value: "The Way of Kings")
				LabeledContent("Title", value: "The Final Empire")
			} header: {
				Text("Brandon Sanderson books")
			}
		}
		
		// personalizing the section
		Form {
			Section {
				LabeledContent("Name", value: "Rubén")
				LabeledContent("Age", value: "425")
				LabeledContent("Email", value: "ruben@gmail.com")
			} header: {
				HStack {
					Image(systemName: "person.circle")
					Text("Personal Information")
				}
			}
		}
		
		// interactive section
		Form {
			Section {
				Button("Logout", role: .destructive) {
					print("Logging out...")
				}
			}
		}
		
		// Expanded section
		Form {
			Section {
				DisclosureGroup("Advanced Options") {
					Toggle("Pro mode", isOn: $isExpanded)
					Stepper("Intensity", value: $counter, in: 1...100)
					LabeledContent("Selected intensity", value: "\(counter)")
				}
			} header: {
				Text("Expert mode")
			} footer: {
				Text("Use with caution")
			}
		}
	}
}

#Preview {
	SectionView()
}

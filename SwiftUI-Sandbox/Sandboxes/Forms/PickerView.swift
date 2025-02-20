//
//  PickerView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 20/2/25.
//

import SwiftUI

enum Gender: String, CaseIterable, Identifiable {
	case male = "Male"
	case female = "Female"
	case other = "Other"
	
	var id: Self { self }
}

struct PickerView: View {
	
	@State private var selectedDevice = "iPhone"
	let devices: [String] = ["iPhone", "iPad", "MacBook", "Mac mini", "Apple Watch", "Apple TV", "Airpods"]
	
	@State private var selectedAge = 29
	
	@State private var selectedGender: Gender = .male
	
	@State private var selectedFruit = "Apple"
	
	let fruits = [
		("Apple", "applelogo"),
		("Banana", "leaf"),
		("Orange", "sun.max"),
		("Grape", "circle.fill")
	]
	
	var body: some View {
		Form {
			// Basic picker
			Section {
				Picker("Select a device", selection: $selectedDevice) {
					ForEach(devices, id: \.self) { device in
						Text(device)
					}
				}
				LabeledContent("Selected:", value: selectedDevice)
			} header: {
				Text("Basic picker")
			}
			
			// Styled picker
			Section {
				Picker("Select a device", selection: $selectedDevice) {
					ForEach(devices, id: \.self) { device in
						Text(device)
					}
				}
				.pickerStyle(.wheel) // .menu, .segmented, .inline
				LabeledContent("Selected:", value: selectedDevice)
			} header: {
				Text("Styled picker")
			}
			
			// Number picker
			Section {
				Picker("Select your age", selection: $selectedAge) {
					ForEach(18..<100, id: \.self) { age in
						Text("\(age) years").tag(age)
					}
				}
				LabeledContent("Your age:", value: "\(selectedAge) years")
			} header: {
				Text("Number picker")
			}
			
			// Enum Picker
			Section {
				Picker("Select your gender", selection: $selectedGender) {
					ForEach(Gender.allCases) { gender in
						Text(gender.rawValue)
					}
				}
				.pickerStyle(.segmented)
				LabeledContent("Your gender:", value: selectedGender.rawValue)
			} header: {
				Text("Enum picker")
			}
			
			// With icons
			Section {
				Picker("Selecciona una fruta", selection: $selectedFruit) {
					ForEach(fruits, id: \.0) { fruit, icon in
						Label(fruit, systemImage: icon)
							.tag(fruit)
							.foregroundStyle(.black)
					}
				}
				.pickerStyle(.menu)
				LabeledContent("Fruit:", value: selectedGender.rawValue)
			} header: {
				Text("Icon and text picker")
			}
			
			
			// With navigation
			NavigationStack {
				Form {
					Picker("Select a device", selection: $selectedDevice) {
						ForEach(devices, id: \.self) { device in
							Text(device)
						}
					}
					.pickerStyle(.navigationLink)
					
				}
				.navigationTitle("Device Selection")
			}
		}
	}
}

#Preview {
	PickerView()
}

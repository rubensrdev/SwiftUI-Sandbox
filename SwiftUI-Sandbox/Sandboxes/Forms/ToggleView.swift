//
//  ToogleView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 21/2/25.
//

import SwiftUI

struct ToggleView: View {
	@State private var isOn = false
	@State private var isOnStyle = true
	@State private var isSwitchOn = true
	@State private var isButtonOn = true
	@State private var isLabelOn = false
	@State private var isLabelButtonOn = true
	@State private var lightBulb = false
	
	var body: some View {
		Form {
			// Basic toggle
			Section {
				Toggle("Active toggle", isOn: $isOn)
			} header: {
				Text("Basic toggle")
			}
			
			// Styled
			Section {
				Toggle("Styled toggle", isOn: $isOnStyle)
					.padding()
					.font(.headline)
					.tint(.indigo)
					.background(
						RoundedRectangle(cornerRadius: 10)
							.fill(.indigo.opacity(0.2)
						)
					)
			} header: {
				Text("Styled toggle")
			}
			
			// With predefined styles
			Section {
				Toggle("Interruptor (Por defecto)", isOn: $isSwitchOn)
					.toggleStyle(.switch)
				Toggle("Modo Botón", isOn: $isButtonOn)
					.toggleStyle(.button)
			} header: {
				Text("With predefined styles")
			}
			
			// With label and Image transition
			Section {
				Toggle(isOn: $isLabelOn) {
					Label("Wifi", systemImage: isLabelOn ? "wifi" : "wifi.slash")
						.foregroundStyle(isLabelOn ? .green : .gray)
				}
				HStack {
					Toggle(isOn: $isLabelButtonOn) {
						Image(systemName: "hand.tap")
							.resizable()
							.scaledToFit()
							.frame(width: 25)
							.foregroundStyle(isLabelButtonOn ? .green : .gray)
					}
					.toggleStyle(.button)
					
					Toggle(isOn: $lightBulb) {
						Image(systemName: "lightbulb")
					}
					.font(.largeTitle)
					.toggleStyle(.button)
					.symbolVariant(lightBulb ? .fill : .none)
					.foregroundStyle(lightBulb ? .yellow : .blue)
					.contentTransition(.symbolEffect(.replace))
				}
			} header: {
				Text("With label and Image transition")
			}
			
			// Custom Toggle
			Section {
				Button(action: {
					isOn.toggle()
				}) {
					HStack {
						Text("Tap to toggle")
							.foregroundStyle(isOn ? .green : .black)
						Spacer()
						Circle()
							.fill(isOn ? .green : .gray)
							.frame(width: 25)
					}
					.padding()
					.background(
						RoundedRectangle(cornerRadius: 10)
							.fill(Color.black.opacity(0.1)
						)
					)
				}
			} header: {
				Text("Custom Toggle")
			}
			
			// Disabled
			Section {
				Toggle("Disabled toggle", isOn: $isOn)
					.disabled(true)
			} header: {
				Text("Disabled Toggle")
			}
		}
	}
}

#Preview {
	ToggleView()
}

//
//  FormView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 17/2/25.
//

import SwiftUI

struct FormViewAndDataEntry: View {
	@State private var name: String = ""
	@State private var notificationsEnabled: Bool = true
	@State private var carModel: CarModel = .Yaris
	enum CarModel: String, CaseIterable {
		case Civic
		case Chr
		case Yaris
		case Cx5
	}
	
    var body: some View {
		NavigationStack {
			// Basic form structure
			Form {
				Section {
					TextField("Your name:", text: $name)
						// React to changes
						.onChange(of: name) {
							print("Name changed to \(name)")
						}
					Picker("Car model", selection: $carModel) {
						ForEach(CarModel.allCases, id: \.self) { model in
							Text(model.rawValue)
						}
					}
				} header: {
					Text("Personal Information")
				} footer: {
					Text("We will never share your personal data.")
				}
				
				Section {
					Toggle("Notifications", isOn: $notificationsEnabled)
				} header: {
					Text("Preferences")
				}

			}
			.navigationTitle("Demo form")
			// Style in ipad o mac
			.formStyle(.grouped)
		}
    }
}

#Preview {
    FormViewAndDataEntry()
}

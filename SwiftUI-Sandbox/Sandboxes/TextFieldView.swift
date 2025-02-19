//
//  TextFieldView.swift
//  SwiftUI-Sandbox
//
//  Created by Rubén Segura Romo on 19/2/25.
//

import SwiftUI

struct TextFieldView: View {
	@State private var name: String = ""
	@State private var email: String = ""
	@State private var phoneNumber: String = ""
	@State private var price: String = ""
	@State private var linkedingURL: String = ""
	@State private var username: String = ""
	@State private var age: String = ""
	@State private var password: String = ""
	@State private var isSecure: Bool = true
	
	var body: some View {
		Form {
			// Basic textfiel with placeholder
			TextField("Write your name", text: $name)
				.padding()
			
			// With style
			TextField("Write your name", text: $name)
				.textFieldStyle(.roundedBorder)
				.font(.title)
			
			// With promt and style
			TextField("", text: $name, prompt: Text("Write your name").foregroundStyle(.blue))
				.foregroundStyle(.mint)
				.bold()
				.padding()
			
			// With different keyboard settings
			TextField("Email", text: $email)
				.keyboardType(.emailAddress)
				.textInputAutocapitalization(.never)
				.autocorrectionDisabled()
			
			TextField("Your phone number", text: $phoneNumber)
				.keyboardType(.phonePad)
			
			TextField("Price", text: $price)
				.keyboardType(.decimalPad)
			
			TextField("Linkedin profile URL", text: $linkedingURL)
				.keyboardType(.URL)
			
			// With validation
			TextField("Username", text: $username)
				.onChange(of: username) {
					if username.count > 10 {
						username = String(username.prefix(10))
					}
				}
			
			TextField("Age", text: $age)
				.onSubmit {
					print("User has submitted his age: \(age)")
				}
			
			// With secure field for protect the text
			HStack {
				if isSecure {
					SecureField("Password", text: $password)
				} else {
					TextField("Password", text: $password)
				}
				
				Button(action: { isSecure.toggle() }) {
					Image(systemName: isSecure ? "eye.slash" : "eye")
						.foregroundColor(.gray)
				}
			}
			
		}
	}
}

#Preview {
	TextFieldView()
}

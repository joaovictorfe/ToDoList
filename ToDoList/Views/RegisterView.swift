//
//  RegisterView.swift
//  ToDoList
//
//  Created by João Victor on 27/04/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var registerModel = RegisterViewViewModel()
    
    var body: some View {
        HeaderView(
            title: "Register",
            subtitle: "Start organizing todos",
            angle: -15,
            background: .orange
        )
        
        Form {
            TextField("Full Name", text: $registerModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Email address", text: $registerModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            
            SecureField("Password", text: $registerModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Create Account", background: .green) {
                registerModel.register()
            }
            .padding()
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}

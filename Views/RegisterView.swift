//
//  RegisterView.swift
//  To Do List
//
//  Created by Christopher Bernard on 8/29/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title:"Register",
                       subtitle:"Start organizing todos",
                       angle:-15,
                       background:Color.orange)
            Form{
                TextField("Full Name", text:$viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    
                TextField("Email", text:$viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                SecureField("Password", text:$viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(
                    title: "Create Account",
                    background: .green){
                        viewModel.register()
                    }
                    .padding()
            }
            .offset(y:-50)
            Spacer()
            
        }
    }
}

#Preview {
    RegisterView()
}

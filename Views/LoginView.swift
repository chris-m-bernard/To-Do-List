//
//  LoginView.swift
//  To Do List
//
//  Created by Christopher Bernard on 8/29/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView {
            VStack{
                //Header
                HeaderView(title:"To Do List",
                           subtitle:"Get Things Done",
                           angle:15,
                           background:Color.pink)

                //Login Form
                if !viewModel.errorMessage.isEmpty{
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color.red)
                }
                Form{
                    TextField("Email Address", text:$viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text:$viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(
                        title: "Log In",
                        background: .blue){
                            viewModel.login()
                        }
                        .padding()
                }
                .offset(y:-50)
                //Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account.", destination: RegisterView())
                }
                .padding(.bottom,50)
                Spacer()
            }
            
        }
    }
}

#Preview {
    LoginView()
}

//
//  ProfileView.swift
//  To Do List
//
//  Created by Christopher Bernard on 8/29/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                if let user = viewModel.user{
                    // Avatar
                    profile(user: user)
                }else{
                    Text("Loading Profile...")
                }
                
            }
            .navigationTitle("Profile")
        }
        .onAppear(){
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width:125, height:125)
            .padding()
        // Info: Name, Email, Member since
        VStack(alignment:.leading){
            HStack{
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            HStack{
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            HStack{
                Text("Member Since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970:user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        .padding()
        //Sign Out
        Button("Log Out"){
            viewModel.logout()
        }
        .tint(.red)
        .padding()
        
        Spacer()
    }
}

#Preview {
    ProfileView()
}

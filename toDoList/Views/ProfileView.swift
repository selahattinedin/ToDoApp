//
//  ProfileView.swift
//  toDoList
//
//  Created by Selahattin EDİN on 24.07.2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                if let user = viewModel.user{
                    profile(user: user)
                    
                }  else{
                    Text("Profil yükleniyor...")
                }
                
            }
            .navigationTitle("Profil")
        }
        .onAppear{
            viewModel.fetchUser()
        }
            
    }
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width:125, height: 125)
            .padding()
        
        VStack(alignment: .leading){
            HStack{
                Text("İsim: ")
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
                Text("Member since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970:user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
            
        }
        .padding()
        
        Button("çıkış yap"){
            viewModel.logOut()
            
        }
        
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .padding()
        
        Spacer()
    }
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
        
        
        
        
    }
}

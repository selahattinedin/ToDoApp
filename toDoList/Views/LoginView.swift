//
//  LoginView.swift
//  toDoList
//
//  Created by Selahattin EDİN on 24.07.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "Listele", subtitle: "Yarına bırakma", angle: 15, background: .pink)
                
                Form{
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue){
                        
                        viewModel.login()
                    }
                    .padding()
                    
                }
                .offset(y: -50)
                
                
                //Create Acount
                VStack{
                    Text("Hesap oluşturmadınız mı?")
                    
                    NavigationLink("Hesap oluştur", destination: RegisterView())
                }
                .padding(.bottom,50)
                Spacer()
                
            }
        }
    }
}
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
    


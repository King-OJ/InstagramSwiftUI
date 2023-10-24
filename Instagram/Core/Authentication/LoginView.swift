//
//  LoginView.swift
//  Instagram
//
//  Created by Clem OJ on 24/10/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
                Spacer()
                
                //logo image
                Image("instagram")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                
                //text fields
                VStack(spacing: 16) {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(TextFieldModifier())
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(TextFieldModifier())
                    
                }
                
                Button {
                    print("forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 24)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                //login button
                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .modifier(ActionBtnModifier())
                        
                }
                .padding(.vertical)
                
                //or facebook divider
                HStack {
                    Rectangle()
                        .frame(width:( UIScreen.main.bounds.width / 2 ) - 40, height: 0.5)
                        
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        
                    
                    Rectangle()
                        .frame(width:( UIScreen.main.bounds.width / 2 ) - 40, height: 0.5)
                        
                }.foregroundColor(.gray)
                
                //continue with facebook
                HStack{
                    Image("facebook")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account yet?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.blue)
                    .font(.footnote)
                }
                .padding(.vertical,16)

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

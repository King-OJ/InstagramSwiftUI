//
//  AddEmailView.swift
//  Instagram
//
//  Created by Clem OJ on 24/10/2023.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Add your email")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("You'll use this email to sign in to your account")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Email", text: $email)
                    .autocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                //navigation button
                NavigationLink {
                    CreateUsernameView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next")
                        .modifier(ActionBtnModifier())
                }.padding(.vertical)

                
                
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
        }
        }
    }
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}

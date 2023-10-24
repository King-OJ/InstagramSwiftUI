//
//  CreateUsernameView.swift
//  Instagram
//
//  Created by Clem OJ on 24/10/2023.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @State private var username = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 12) {
                Text("Create username")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("The is the name to be displayed in your account")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Username", text: $username)
                    .autocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                //navigation button
                NavigationLink {
                    CreatePasswordView()
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

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}

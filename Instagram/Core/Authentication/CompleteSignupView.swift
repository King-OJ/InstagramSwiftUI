//
//  CompleteSignupView.swift
//  Instagram
//
//  Created by Clem OJ on 24/10/2023.
//

import SwiftUI

struct CompleteSignupView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 12) {
                Text("Welcome to Instagram, Clement Ojigs")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                    .padding(.top)
                    .frame(maxWidth: 250)
                
                Text("Click below to complete registration and start using Instagram")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                //complete signup button
                Button {
                    print("complete sign up")
                } label: {
                    Text("Complete Signup")
                        .modifier(ActionBtnModifier())
                }.padding(.vertical)
                
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

struct CompleteSignupView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignupView()
    }
}

//
//  ProfileView.swift
//  Instagram
//
//  Created by Clem OJ on 19/10/2023.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1 ),
        .init(.flexible(), spacing: 1 ),
        .init(.flexible(), spacing: 1 )
    ]
    
    var body: some View {
        NavigationStack {
            
            ScrollView {
                
                //header
                VStack(spacing: 10){
                    
                    //pic and stats
                    HStack{
                        Image("profile-pic")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            VStack{
                                Text("3")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Text("Posts")
                                    .font(.footnote)
                            }
                            .frame(width: 76)
                            
                            VStack{
                                Text("345")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Text("Followers")
                                    .font(.footnote)
                            }
                            .frame(width: 76)
                            
                            VStack{
                                Text("200")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Text("Following")
                                    .font(.footnote)
                            }
                            .frame(width: 76)
                        }
                     
                        
                    }
                    .padding(.horizontal)
                   
                    
                    //name and bio
                    VStack(alignment: .leading, spacing: 4) {
                       Text("Clement Ojigs")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Software Developer, Husband, Dad.")
                             .font(.footnote)
                             .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    //action button
                    Button {
                        //
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray, lineWidth: 1)
                            }
                    }
                    
                    Divider()

                }
                
                
                //postgrid view
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 10, id: \.self) { index in
                        Image("profile-pic")
                            .resizable()
                            .scaledToFill()
                    }
                }
                
            }.navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            //
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.black)
                        }

                    }
                }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

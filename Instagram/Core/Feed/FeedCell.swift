//
//  FeedCell.swift
//  Instagram
//
//  Created by Clem OJ on 20/10/2023.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            //profile icon and username
            HStack {
                Image("profile-pic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("Clement")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            //post image
            Image("profile-pic")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //action buttons
            HStack(spacing: 16) {
                Button {
                    print("Like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment on post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
                
            }.padding(.leading, 8)
                .padding(.top, 4)
                .foregroundColor(.black)
            

            //likes label
            Text("40 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 1)
                .padding(.leading, 10)
            
            //caption label
            HStack {
                Text("Clement ")
                    .fontWeight(.semibold)
                +
                Text("This is my first post and I am more very excited to share it with yall")
                
                Spacer()
            }.font(.footnote)
                .padding(.top, 1)
                .padding(.leading, 10)
            
            //time stamp label
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 1)
                .padding(.leading, 10)
                .foregroundColor(.gray)
            
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}

//
//  SearchView.swift
//  Instagram
//
//  Created by Clem OJ on 21/10/2023.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            
            ScrollView {
                LazyVStack (spacing: 12) {
                    ForEach(0...15, id: \.self) { user in
                        HStack {
                            Image("profile-pic")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("Clement")
                                    .fontWeight(.semibold)
                                Text("Software Developer")
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 6)
                .searchable(text: $searchText, prompt: "Search...")
                
            }.navigationTitle("Explore")
                .navigationBarTitleDisplayMode(.inline)
            
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

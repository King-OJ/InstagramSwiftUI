//
//  ActionBtnModifier.swift
//  Instagram
//
//  Created by Clem OJ on 24/10/2023.
//

import SwiftUI

struct ActionBtnModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .tracking(1)
            .frame(width: 350, height: 44)
            .background(.blue)
            .cornerRadius(8)
    }
}

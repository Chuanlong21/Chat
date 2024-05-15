//
//  Separator.swift
//  Chat
//
//  Created by Chuanlong Liu on 4/29/24.
//

import SwiftUI
//空白页
struct Separator: View {
    let color: Color
    
    var body: some View {
        Divider()
            .overlay(color)
            .padding(.zero)
    }
    
    init(color: Color = Color("separator")) {
        self.color = color
    }
}

#Preview {
    Separator()
}

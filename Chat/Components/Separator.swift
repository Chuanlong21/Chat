//
//  Separator.swift
//  Chat
//
//  Created by Chuanlong Liu on 4/29/24.
//

import SwiftUI
//空白页
struct Separator: View {
    var body: some View {
        Divider()
            .padding(.zero)
            .overlay(.white)
    }
}

#Preview {
    Separator()
}

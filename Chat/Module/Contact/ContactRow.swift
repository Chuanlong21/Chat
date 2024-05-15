//
//  ContactRow.swift
//  Chat
//
//  Created by Chuanlong Liu on 5/1/24.
//

import SwiftUI

struct ContactRow: View {
    
  
    let icon: String
    let title : String
    let style: Style
    
    
    var body: some View {
        HStack{
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 40,height: 40)
                .clipShape(RoundedRectangle(cornerRadius: style == .system ? 4: 6))
            Text(title)
                .font(.system(size: 16))
                .foregroundStyle(.primary)
        }
        .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
        
    }
}

enum Style {
    case system
    case custom
}

#Preview {
    ContactRow(icon: "contact_new_friend", title: "New Friends", style: .system)
}

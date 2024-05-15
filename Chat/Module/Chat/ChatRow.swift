//
//  ChatRow.swift
//  Chat
//
//  Created by Chuanlong Liu on 5/14/24.
//

import SwiftUI

struct ChatRow: View {
    var chat : Chat
    
    var body: some View {
 
        HStack(spacing: 12){
            Image( chat.sender.icon)
                .resizable()
                .renderingMode(.original)
                .frame(width: 48,height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 5){
                HStack(alignment:.top){
                    Text(chat.sender.name)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundStyle(.primary)
                    Spacer()
                    Text(chat.time)
                        .font(.system(size: 10))
                        .foregroundStyle(.secondary)
                }
                
                Text(chat.desc)
                    .lineLimit(1)
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
            }
            
        }
        .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
    }
}

#Preview {
    ChatRow(chat: .swiftui)
}

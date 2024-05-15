//
//  ChatList.swift
//  Chat
//
//  Created by Chuanlong Liu on 5/14/24.
//

import SwiftUI

struct ChatList: View {
    @State private var chats : [Chat] = []
    
    
    var body: some View {
        NavigationStack(){
            ScrollView(){
                
                LazyVStack(spacing: 0){
                    SearchEntry()
                    ForEach(chats){ chat in
                        NavigationLink(destination: ChatView()) {
                            ChatRow(chat: chat)
                        }
                    }
                }
                .foregroundColor(.primary)
            }
            .onAppear(perform: load)
            .navigationTitle("Chat")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(PlainListStyle())
        }
    }
    
    
    func load() {
        guard chats.isEmpty else { return }
        chats = Chat.all
    }
}

#Preview {
    ChatList()
}

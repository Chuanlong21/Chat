//
//  SearchEntry.swift
//  Chat
//
//  Created by Chuanlong Liu on 4/30/24.
//

import SwiftUI

struct SearchEntry: View {
    @State private var isSearchPresented: Bool = false
    
    var body: some View {
        Button(action: { self.isSearchPresented.toggle() }){
            VStack{
                Spacer()
                HStack{
                    HStack(spacing: 4) {
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 13, height: 13)
                            .foregroundColor(.secondary)
                        
                        Text("Search")
                            .foregroundColor(.secondary)
                            .font(.system(size: 16))
                    
                        Spacer()
                    }
                }
                Spacer()
            }
            .background(Color("search_corner_background"))
            .cornerRadius(6)
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
        .background(Color("light_gray"))
        .sheet(isPresented: $isSearchPresented, content: { test() })
        
    }
    

}

#Preview {
    SearchEntry()
}

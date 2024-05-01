//
//  SearchEntry.swift
//  Chat
//
//  Created by Chuanlong Liu on 4/30/24.
//

import SwiftUI

struct SearchEntry: View {
    @State private var searchText = ""
    
    
    var body: some View {
        
        VStack{
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
                    .frame(width: 16, height: 16)
                    .padding(.leading, 10)
                    

                    TextField("Search", text: $searchText)
                        .foregroundColor(.primary)
                        .padding(3)
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                        .padding(.trailing, 10)
                        .lineLimit(1)
                    }
                    .frame(height: 40)
                    .background(Color(.systemGray5))
                    .cornerRadius(12)
                    .padding()
                    
           
        }
        
    }
    

}

#Preview {
    SearchEntry()
}

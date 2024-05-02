//
//  ContactList.swift
//  Chat
//
//  Created by Chuanlong Liu on 5/1/24.
//

import SwiftUI


struct ContactList: View {
    @State private var contacts : [Contact] = []
    @State private var selectedContact: Member?
    
    var body: some View {
        NavigationView(){
            List{
                Group{
                    SearchEntry()
                    ContactRow(icon: "contact_new_friend", title: "新的朋友", style: .system)
                   
                    ForEach(contacts){ contact in
                        Section(header: CustomSectionHeader(title: contact.letter)){
                            
                            ForEach(contact.members){member in
                                
                                NavigationLink(destination: test()){
                                    ContactRow(
                                        icon: member.icon,
                                        title: member.name,
                                        style: .system)
                                }
                                
                            }
                        }
                       
                     
                    }
                    
                }
                .listRowInsets(EdgeInsets())
               
                
            }
            .id(contacts.count)
            .onAppear(perform: {
                load()
            })
            .listStyle(PlainListStyle())
            
        
        }
     
        
        
    }
    
    func load() {
        guard contacts.isEmpty else { return }
        contacts = Contact.all
    }
    
    struct CustomSectionHeader: View {
        let title: String

        var body: some View {
            ZStack(alignment:.leading) {
                Color(.lightGray)
                    .frame(maxWidth: .infinity)
                Text(title)
                    .font(.system(size: 14,weight: .medium))
                    .foregroundColor(.secondary)
                    .padding(EdgeInsets(top: 8, leading: 18, bottom: 8, trailing: 18))
            }
            
        }
    }
}

#Preview {
    ContactList()
}

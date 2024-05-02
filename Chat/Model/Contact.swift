//
//  Contact.swift
//  Chat
//
//  Created by Chuanlong Liu on 5/1/24.
//

import Foundation

struct Contact: Codable, Equatable, Identifiable {
    var id = UUID()
    let letter : String
    var members : [Member]
    
}

extension Contact{
    static let all: [Contact] = [
        c, f, g, n, s, w, z
    ]
    
    static let c = Contact(
        letter: "c",
        members: [.pm, .foodie])
    
    static let f = Contact(
        letter: "f",
        members: [.landlord])
    
    static let g = Contact(
        letter: "G",
        members: [.princess]
    )
    
    static let n = Contact(
        letter: "N",
        members: [.goddess]
    )
    
    static let s = Contact(
        letter: "S",
        members: [.swiftui, .me]
    )
    
    static let w = Contact(
        letter: "W",
        members: [.wang, .nameless]
    )
    
    static let z = Contact(
        letter: "Z",
        members: [.chives]
    )
    
}

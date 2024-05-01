//
//  KeyboardHelper.swift
//  Chat
//
//  Created by Chuanlong Liu on 4/30/24.
//



import UIKit

struct KeyboardHelper {
    static func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}



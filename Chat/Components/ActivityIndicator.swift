//
//  ActivityIndicator.swift
//  Chat
//
//  Created by Chuanlong Liu on 4/29/24.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
           return UIActivityIndicatorView(style: .large)
       }

       func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
           uiView.startAnimating()
       }
}

#Preview {
    ActivityIndicator()
}

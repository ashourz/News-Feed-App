//
//  WebView.swift
//  H4X0R News
//
//  Created by Zak Ashour on 6/22/24.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    let urlString: String?
    func makeUIView(context: Context) -> UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}

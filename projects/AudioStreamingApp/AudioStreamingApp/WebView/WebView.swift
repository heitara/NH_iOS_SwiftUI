//
//  WebView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/27/25.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    @Environment(LoginScreenViewModel.self) var vm: LoginScreenViewModel
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        print("\(#function)")
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        
        let webView = WKWebView(frame: .zero, configuration: config)
        
        webView.navigationDelegate = context.coordinator
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        print("\(#function)")
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    func makeCoordinator() -> Coordinator {
        print("\(#function)")
        return Coordinator(self)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebView
        
        init (_ parent: WebView) {
            self.parent = parent
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            print("Page loaded: \(parent.url.absoluteString)")
        }
        
        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            print("Navigation error: \(error.localizedDescription)")
        }
    }
}

#Preview {
    WebView(url: URL(string: "https://google.com")!)
        .environment(LoginScreenViewModel(username: "username", password: "password", showLogin: false))
}

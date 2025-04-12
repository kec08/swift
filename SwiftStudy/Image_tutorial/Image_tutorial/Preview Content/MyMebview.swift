//
//  MyMebview.swift
//  Image_tutorial
//
//  Created by 김은찬 on 4/9/25.
//
import SwiftUI
import WebKit

struct MyWebview: UIViewRepresentable {
    
    // 필요한 URL 문자열 저장 변수
    var urlToLoad: String
    
    // 뷰 생성
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        
        if let url = URL(string: self.urlToLoad) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
        return webView
    }
    
    // 뷰 업데이트
    func updateUIView(_ uiView: WKWebView, context: Context) {
        // 필요한 경우 동적으로 업데이트하는 코드 작성 가능
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}


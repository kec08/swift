//
//  ContentView.swift
//  SwiftUI_Webvriew_tutorial
//
//  Created by 김은찬 on 4/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MyWebview(urlToLod: "https://www.google.com")
        
        NavigationView{
            
            HStack {
                NavigationLink(destination: MyWebview(urlToLoad:
                    "https://www.google.com")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    Text("구글")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebview(urlToLoad:
                    "https://www.naver.com")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    Text("네이버")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebview(urlToLoad:
                    "https://www.youtube.com")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    Text("유튜브")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                }
            }
        }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

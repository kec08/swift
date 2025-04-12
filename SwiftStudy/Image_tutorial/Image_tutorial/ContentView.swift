//
//  ContentView.swift
//  Image_tutorial
//
//  Created by 김은찬 on 4/9/25.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -150)
                    
                CilcleImageView()
                
                VStack{
                    Text("안녕하세요, 김은찬 입니다")
                        .font(.system(size: 20))
                        .foregroundStyle(.blue)
                        .fontWeight(.bold)
                        .padding(.top, 15)
                    Text("Swift 공부중...")
                        .font(.system(size: 18))
                        .foregroundStyle(.gray)
                        .padding(.top, 5)
                }
                
                HStack{
                    NavigationLink(destination:
                        MyWebview(urlToLoad:
                        "https://www.youtube.com/@user-d1n6v")
                    ){
                        Text("플레이리스트")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    
                    NavigationLink(destination:
                        MyWebview(urlToLoad:
                        "https://music.apple.com/profile/kec4489")
                    ){
                        Text("애플뮤직")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding()
                            .background(Color.pink)
                            .cornerRadius(20)
                    }
                }
                .padding(30)
            }
            
        }
    }
}

#Preview {
    ContentView()
}

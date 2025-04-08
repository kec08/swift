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
                .padding(50)
            }
            
        }
    }
}

#Preview {
    ContentView()
}

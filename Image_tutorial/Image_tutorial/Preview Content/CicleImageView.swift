//
//  CicleImageView.swift
//  Image_tutorial
//
//  Created by 김은찬 on 4/9/25.
//

import SwiftUI

struct CilcleImageView: View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 100))
//            .foregroundColor(.yellow)
//            .shadow(color: .gray, radius: 2, x: 2, y: 10)
        
        Image("myImage")
        .resizable()
//            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
        
            .overlay(Circle()
                .foregroundColor(.black)
                .opacity(0.5)
            )
        
            .overlay(
                Circle() .stroke(Color.gray,
                    lineWidth: 5)
                )
        
            .overlay(
                Text("Hi, I'm EunChan")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    
                )
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
    }
}

struct CilcleImageView_Previews:
    PreviewProvider {
    static var previews: some View {
        CilcleImageView()
    }
}

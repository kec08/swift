//
//  MyCard2.swift
//  stack_pratice
//
//  Created by 김은찬 on 4/10/25.
//

import SwiftUI

struct MyCard2: View {
    var body: some View {
        
        HStack(spacing: 20){
            Image(systemName: "tv.fill")
                .font(.system(size: 50))
                .foregroundColor(.white)
                
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                
                Text("영상 다시보기")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("8 AM - 9 AM")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .padding(.top, 5)
            }
            
        }
        .padding(20)
        .background(Color.red)
        .cornerRadius(20)
        
    }
}

struct MyCard2_Previews: PreviewProvider {
    static var previews: some View {
        MyCard2()
    }
}

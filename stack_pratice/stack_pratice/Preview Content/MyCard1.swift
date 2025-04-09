//
//  MyCard.swift
//  stack_pratice
//
//  Created by 김은찬 on 4/10/25.
//

import SwiftUI

struct MyCard1: View {
    var body: some View {
        
        HStack(spacing: 20){
            Image(systemName: "flame.fill")
                .font(.system(size: 50))
                .foregroundColor(.white)
                
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                
                Text("개인 프로젝트")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("10 AM - 11 AM")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .padding(.top, 5)
            }
            
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
        
    }
}

struct MyCard1_Previews: PreviewProvider {
    static var previews: some View {
        MyCard1()
    }
}

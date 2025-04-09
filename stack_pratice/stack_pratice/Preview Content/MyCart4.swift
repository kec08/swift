//
//  MyCart4.swift
//  stack_pratice
//
//  Created by 김은찬 on 4/10/25.
//

import SwiftUI

struct MyCard4: View {
    var body: some View {
        
        HStack(spacing: 20){
            Image(systemName: "gamecontroller.fill")
                .font(.system(size: 50))
                .foregroundColor(.white)
                
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                
                Text("히오스 한판하기")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("2 PM - 3 PM")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .padding(.top, 5)
            }
            
        }
        .padding(20)
        .background(Color.blue)
        .cornerRadius(20)
        
    }
}

struct MyCard4_Previews: PreviewProvider {
    static var previews: some View {
        MyCard4()
    }
}

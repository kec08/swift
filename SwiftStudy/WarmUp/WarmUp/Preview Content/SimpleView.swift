//
//  SimpleView.swift
//  WarmUp
//
//  Created by 김은찬 on 4/15/25.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom, 20.0)
            
            Text("해드라인 입니다")
                .fontWeight(.bold)
                .padding(.bottom, 20.0)
                
            Text("서브헤드라인 입니다")
                .padding(.bottom, 20.0)
            Text("바디 입니다")
                .fontWeight(.medium)
                .padding(.bottom, 20.0)
            
            Button{
                print("clicked!")
            } label: {
                Text("Click Me")
                    .padding(15)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    SimpleView()
}

//
//  MyBasicCard.swift
//  stack_pratice
//
//  Created by 김은찬 on 4/10/25.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
//            Rectangle().frame(height: 0)
            
            Text("개인 프로젝트")
                .font(.system(size: 25))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10 AM -- 11 AM")
                .foregroundColor(.secondary)
                .padding(.bottom, 20)
            HStack {
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay{
                        Circle()
                            .stroke(lineWidth: 3)
                            .foregroundColor(Color.blue)
                    }
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay{
                        Circle()
                            .stroke(lineWidth: 3)
                            .foregroundColor(Color.red)
                    }
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay{
                        Circle()
                            .stroke(lineWidth: 3)
                            .foregroundColor(Color.gray)
                    }
                
                Spacer()
                
                Text("확인")
                    .frame(width: 50, height: 20)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                    .fontWeight(.bold)
                    
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}

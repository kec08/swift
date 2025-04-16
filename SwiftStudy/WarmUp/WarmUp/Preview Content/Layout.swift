//
//  Layout.swift
//  WarmUp
//
//  Created by 김은찬 on 4/15/25.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.bottom, 20.0)
            

                
            Text("Text Element 1")
                .font(.headline)
                .padding(.bottom, 20.0)
            Text("Text Element 2")
                .font(.subheadline)
                .padding(.bottom, 20.0)
            Text("Text Element 3")
                .font(.body)
                .padding(.bottom, 20.0)
            
            HStack{
                Button{
                    print("clicked!")
                } label: {
                    Text("Button1")
                        .padding(15)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Button{
                    print("clicked!")
                } label: {
                    Text("Button2")
                        .padding(15)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            VStack{
                Image(systemName: "arrowshape.right.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                
                MyButton()
            }
            .padding(25)
            .background(Color.yellow)
            .cornerRadius(15)
            
        }
    }
}

#Preview {
    Layout()
}

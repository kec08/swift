//
//  TebDatail.swift
//  WarmUp
//
//  Created by 김은찬 on 4/16/25.
//

import SwiftUI

struct TebDatail1: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct TebDatail2: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            
            Button {
                
            } label: {
                Text("continue")
                    .padding()
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        
    }
}

struct TebDatail3: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("wolrd3")
        }
        
    }
}



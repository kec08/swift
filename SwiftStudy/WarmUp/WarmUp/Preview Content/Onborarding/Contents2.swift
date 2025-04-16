//
//  Contents.swift
//  WarmUp
//
//  Created by 김은찬 on 4/15/25.
//

import SwiftUI

struct Contents2: View {
    var body: some View {
        HStack {
            Image(systemName: "document.on.document")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)
                .padding(10)

            
            VStack(alignment: .leading){
                Text("Copy & Paste Edits")
                    .font(.headline)
                    .fontWeight(.bold)
                
                Text("A centralized resource where common functionalities, components, or data models are stored and reused across multiple projects or modules.")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10) 
    }
}

#Preview {
    Contents2()
}

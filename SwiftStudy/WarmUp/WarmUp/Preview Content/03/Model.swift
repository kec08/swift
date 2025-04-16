//
//  Model.swift
//  WarmUp
//
//  Created by 김은찬 on 4/15/25.
//

import SwiftUI

struct Model: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack{
            Text("안녕하세요")
            Button{
                showModal = true
            } label: {
                Text("클릭")
            }
        }.sheet(isPresented: $showModal) {
            Dotail(isPresented: $showModal)
        }
        
    }
}

#Preview {
    Model()
}

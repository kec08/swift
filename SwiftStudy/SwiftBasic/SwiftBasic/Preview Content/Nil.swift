//
//  Nil.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/14/25.
//

import SwiftUI

struct Nil: View {
    
    var name: String = "Leeo"
    var petName: String?
    
    var bomi: String = "bomi"
    var petName2: String = ""
    
    var body: some View {
        VStack {
//            Text("이름은 \(name) 펫 네임은 \(petName)입니다")
            Text("이름은 \(bomi) 펫 네임은 \(petName2)입니다")
        }
        .onAppear {
            print("이름은 \(name) 펫 네임은 \(petName)입니다")
            
            print("이름은 \(bomi) 펫 네임은 \(petName2)입니다")
        }
    }
}

#Preview {
    Nil()
}

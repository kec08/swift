//
//  Half.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/14/25.
//

import SwiftUI

struct Half: View {
    var names: [String] = ["리오", "은찬", "수박", "복숭아","문종은"]
    
    var body: some View {
        List {
            ForEach(names, id: \.self) { name in
                let welcome = sayHi(to: name)
                if name == "은찬" {
                    Text("기다렸어요. \(name)")
                }
                else{
                    Text(welcome)
                }
            }
        }
    }
    
    func sayHi(to name: String) -> String {
        return "\(name)님 반갑습니다"
    }
}

#Preview {
    Half()
}

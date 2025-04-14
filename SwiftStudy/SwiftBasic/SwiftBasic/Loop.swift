//
//  Loop.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/13/25.
//

import SwiftUI

struct Loop: View {
    
    let names: [String] = ["은찬", "리이사", "리아서", "바이", "나리"]
    
    var body: some View {
        
        VStack{
            ForEach(names, id: \.self) { item in
                Text(item)
            }
            
        }
        
    }
}

#Preview {
    Loop()
}

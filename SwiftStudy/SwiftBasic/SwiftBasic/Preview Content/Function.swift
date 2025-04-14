//
//  Function.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/13/25.
//

import SwiftUI

struct Function: View {
    
    @State var inputNumber = 0
    
    var body: some View {
        VStack {
            Text("\(inputNumber)")
            
            Button {
                inputNumber = plusFive(with : inputNumber)
            } label: {
                Text("+5")
            }
        }
        
    }
    
    func plusFive(with input: Int) -> Int{
        return input + 5
    }
    
    }

#Preview {
    Function()
}

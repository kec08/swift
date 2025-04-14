//
//  Elevator.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/14/25.
//

import SwiftUI

struct Elevator: View {
    
    @State var myElevator = ElevtorStruct()
    
    var body: some View {
        Text("층수 \(myElevator.level)")
        HStack{
            Button{
                myElevator.goDown()
            } label: {
                Text("아래로")
            }
            
            Button{
                myElevator.goUp()
            } label: {
                Text("위로")
            }
        }
    }
}

struct ElevtorStruct {
    var level: Int = 1
    
    mutating func goDown() {
        level = level - 1
    }
    
    mutating func goUp() {
        level = level + 1
    }
}

#Preview {
    Elevator()
}

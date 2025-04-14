//
//  Diff.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/14/25.
//

import SwiftUI

struct Diff: View {
    
    let myCar = Car(name: "bmw", owner: "김은찬")
    @ObservedObject var myKar = Kar(name: "k5", owner: "kim2")
    @State var name: String = ""
    
    var body: some View {
        Text("\(myKar.name)의 주인은 \(myKar.owner)입니다")
        TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)

        Button{
            
            let broCar = myKar
            broCar.name = "동생차"
            broCar.owner = "동생"
            
            myCar.sayHi()
            broCar.sayHi()
        } label: {
            Text("출발")
        }
    }
}

struct Car{
    var name: String
    var owner: String
    
    func sayHi() {
        print("Hi \(owner)")
    }
}

class Kar: ObservableObject  {
    @Published var name: String
    var owner: String
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
    
    func sayHi() {
        print("Hi \(owner)")
    }
}

#Preview {
    Diff()
}

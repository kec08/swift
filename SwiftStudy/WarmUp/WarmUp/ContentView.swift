//
//  ContentView.swift
//  WarmUp
//
//  Created by 김은찬 on 4/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
            

            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .font(.headline)
                .foregroundColor(Color.pink)
            Stepper(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(4)/*@END_MENU_TOKEN@*/, in: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Range@*/1...10/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Stepper")/*@END_MENU_TOKEN@*/
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

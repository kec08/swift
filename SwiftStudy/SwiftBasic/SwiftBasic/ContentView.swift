//
//  ContentView.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DisclosureGroup("선도부") {
                Text("문종은")
                Text("황성재")
                Text("최인규")
                Text("김규빈")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

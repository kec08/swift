//
//  MyButton.swift
//  WarmUp
//
//  Created by 김은찬 on 4/15/25.
//

import SwiftUI

struct MyButton: View {
    var body: some View {
        Button{
            print("clicked!")
        } label: {
            Text("complex Button")
                .foregroundColor(.white)
                .font(.system(size: 20))
        }
    }
}

#Preview {
    MyButton()
}

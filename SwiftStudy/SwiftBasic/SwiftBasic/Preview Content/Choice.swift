//
//  Choice.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/14/25.
//

import SwiftUI

struct Choice: View {
    
    var direction: Direction = .north
    
    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다")

    }
}

enum Member {
    case leeo, tom(String), bomi, koko
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    Choice()
}

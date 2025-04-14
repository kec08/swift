//
//  Select.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/14/25.
//

import SwiftUI

struct Select: View {
    
    @State var myDirection: Direction = .north
    
    var body: some View {
        VStack {
            switch myDirection {
            case .north:
                Text("북쪽은 추워요")
            case .south:
                Text("남쪽은 석양이 예뻐요")
            case .east:
                Text("동쪽은 추워요")
            case .west:
                Text("서쪽으로 가요")
            default:
                Text("???")
            }
        }
        
        Button {
            switch myDirection {
            case .north, .west:
                myDirection = .east
            case .east:
                myDirection = .north
            default :
                myDirection = .south
            }
        } label: {
            Text("돌리기")
        }
        
    }
    enum Direction: String {
        case north = "북"
        case west = "서"
        case east = "동"
        case south = "남"
        case myWay
    }
}

#Preview {
    Select()
}

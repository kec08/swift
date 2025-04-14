//
//  Sample.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/14/25.
//

import SwiftUI

struct Sample: View {
    
    enum Direction: String {
        case north = "북"
        case south = "남"
        case east = "동"
        case west = "서"
    }
    
    struct Destination {
        let direction: Direction
        let food: String?
        let image: Image
    }
    
    let date = [
        Destination(direction: .north,
                    food: "파스타맛집",
                    image: Image(systemName: "carrot.fill")),
        Destination(direction: .south,
                    food: nil,
                    image: Image(systemName: "cursor.rays")),
        Destination(direction: .east,
                    food: nil,
                    image: Image(systemName: "sunrise")),
        Destination(direction: .west,
                    food: "순대맛집",
                    image: Image(systemName: "balloon"))
    ]
    
    @State var selectedDestination: Destination?
    
    var body: some View {
        VStack {
            selectedDestination?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            if let destination = selectedDestination {
                Text(destination.direction.rawValue)
                
                if let food = destination.food {
                    Text(food)
                }
            }

            
            Button {
                selectedDestination = date.randomElement()
            } label: {
                Text("돌려요")
            }
        }
    }
}


#Preview {
    Sample()
}

//
//  Option.swift
//  SwiftBasic
//
//  Created by 김은찬 on 4/14/25.
//

import SwiftUI

struct Option: View {
    
    var leeo: People? = People(name: "Leeo", petName: "cookie")
    var bomi = People(name: "Bomi")
    var berry = People(name: "berry", petName: "cookie")
    
    var body: some View {
        VStack{
            
//            if let leeo = leeo {
//                if let mbti = leeo.mbti {
//                    if let name = mbti.name {
//                        
//                    }
//                }
//            }
//            
            if let leeoMbitName = leeo?.mbti?.name {
                Text("\(leeoMbitName)")
            } else {
                Text("no mbti")
            }
            
//            if let petName = leeo.petName {
//                Text("이름은 \(leeo.name) 애완동물 이름은 \(petName)")
//            } else {
//                Text("이름은 \(leeo.name) 애완동물은 없어요")
//            }
            
            if let petName = bomi.petName {
                Text("이름은 \(bomi.name) 애완동물 이름은 \(petName)")
            } else {
                Text("이름은 \(bomi.name) 애완동물은 없어요")
            }
            
            if let petName = berry.petName {
                Text("이름은 \(berry.name) 애완동물 이름은 \(petName)")
            } else {
                Text("이름은 \(berry.name) 애완동물은 없어요")
            }
        }
    }
}

struct People {
    let name: String
    var petName: String?
    var mbti: MBTI?
}

struct MBTI {
    let name: String?
}

#Preview {
    Option()
}

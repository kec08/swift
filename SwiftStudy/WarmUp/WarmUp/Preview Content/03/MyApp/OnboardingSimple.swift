//
//  OnboardingSimple.swift
//  WarmUp
//
//  Created by 김은찬 on 4/16/25.
//

import SwiftUI

struct OnboardingSimple: View {
    
    let onboardingTitel: String
    let backgroundColor: Color
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            Text(onboardingTitel)
        }
    }
}

struct OnboardingSimple_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingSimple(onboardingTitel: "온보딩 테스트", backgroundColor: .blue)
    }
}

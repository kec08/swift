//
//  ContentView.swift
//  HelloWolrd
//
//  Created by 김은찬 on 4/7/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State //@state의 변화를 감지 -> 뷰에 적용
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    myVstackView(isActivated: $isActivated)
                    myVstackView(isActivated: $isActivated)
                    myVstackView(isActivated: $isActivated)
                    
                }
                .padding(isActivated ? 50 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .background(Color.yellow)
                .onTapGesture {
                    print("hstack 이 클릭됨")
                    withAnimation {
                        self.isActivated.toggle()
                    }
                    
                }
                NavigationLink(destination: TextView(isActivated: $isActivated) ){
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                } .padding(.top, 50)

            }
        }
            
    }
}



#Preview {
    ContentView()
}

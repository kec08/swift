//
//  TextView.swift
//  HelloWolrd
//
//  Created by 김은찬 on 4/8/25.
//

import SwiftUI

struct TextView: View {
    
    // 데이터를 연동시킨다
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    @State //@state의 변화를 감지 -> 뷰에 적용
    private var index: Int = 0
    
    private let backgroundColors: [Color] = [.red, .green, .blue, .yellow, .orange]
    
    var body: some View {
        VStack {
            Spacer()
            Text("배경 아니템 인덱스\(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            
            if(self.index == self.backgroundColors.count - 1){
                self.index = 0 - 1
            }
            
            self.index += 1
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}

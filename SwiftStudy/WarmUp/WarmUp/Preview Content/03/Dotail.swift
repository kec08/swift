//
//  Motail.swift
//  WarmUp
//
//  Created by 김은찬 on 4/15/25.
//

import SwiftUI

struct Dotail: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("모달 페이지 입니다")
        
        Button{
            isPresented = false
        } label: {
            Text("닫기")
        }
    }
            
}

struct Dotail_Previews: PreviewProvider {
    static var previews: some View {
        Dotail(isPresented: .constant(true))
    }
}

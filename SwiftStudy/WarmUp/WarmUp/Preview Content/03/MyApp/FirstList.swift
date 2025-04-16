//
//  FistList.swift
//  WarmUp
//
//  Created by 김은찬 on 4/16/25.
//

import SwiftUI

struct FirstList: View {
    var body: some View {
        NavigationStack{
            List{
                
                NavigationLink{
                    Text("첫번째 하위 페이지 입니다")
                } label: {
                    Text("첫번째 하위 페이지")
                }
                
                NavigationLink{
                    Text("두번째 하위 페이지 입니다")
                } label: {
                    Text("두번째 하위 페이지")
                }
                
                NavigationLink{
                    Text("세번째 하위 페이지 입니다")
                } label: {
                    Text("세번째 하위 페이지")
                }
                
                NavigationLink{
                    Text("네번째 하위 페이지 입니다")
                } label: {
                    Text("네번째 하위 페이지")
                }
                
            }
            .navigationTitle(Text("리스트"))
        }
    }
}

#Preview {
    FirstList()
}

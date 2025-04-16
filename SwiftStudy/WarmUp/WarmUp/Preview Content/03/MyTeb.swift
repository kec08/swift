//
//  MyTeb.swift
//  WarmUp
//
//  Created by 김은찬 on 4/16/25.
//

import SwiftUI

struct MyTeb: View {
    var body: some View {
        TabView {
            TebDatail1()
                .badge(2)
                .tabItem{
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            
            TebDatail2()
                .tabItem{
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            
            TebDatail3()
                .tabItem{
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            
                
        } .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    MyTeb()
}

//
//  MyApp.swift
//  WarmUp
//
//  Created by 김은찬 on 4/16/25.
//

import SwiftUI

struct MyApp: View {
    
    @State var showModel: Bool = false
    
    var body: some View {
        TabView {
            FirstList()
            .tabItem {
                Label("first", systemImage: "tray.and.arrow.down.fill")
            }
            
            Text("두번재 페이지")
                .tabItem {
                    Label("secound", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("세번재 페이지")
                .tabItem {
                    Label("third", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("네번재 페이지")
                .tabItem {
                    Label("fourth", systemImage: "tray.and.arrow.down.fill")
                }
            
        }
        
        .sheet(isPresented: $showModel, content: {
            TabView {
                
                OnboardingSimple(onboardingTitel: "온보딩 1", backgroundColor: .blue)
                
                OnboardingSimple(onboardingTitel: "온보딩 2", backgroundColor: .yellow)
                
                ZStack{
                    Color.green.ignoresSafeArea()
                    VStack{
                        Text("온보딩 3")
                        
                        Button {
                            showModel = false
                        } label: {
                            Text("Start")
                        }
                    }
                    
                }
            }
            .tabViewStyle(.page)
        })
        .onAppear {
            showModel = true
        }
    }
}

#Preview {
    MyApp()
}

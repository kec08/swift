

import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    
    var body: some View {
        VStack {
            
            Text("\(count)")
                .font(.system(size: 40))
                .fontWeight(.bold)
            
            HStack {
                countButton(title: "+1 버튼", amount: 1)
                countButton(title: "+10 버튼", amount: 10)
                countButton(title: "+100 버튼", amount: 100)
            }
            HStack {
                countButton(title: "-1 버튼", amount: -1)
                countButton(title: "-10 버튼", amount: -10)
                countButton(title: "-100 버튼", amount: -100)
            }
            
        }
        .padding()
    }
    private func countButton(title: String, amount: Int) -> some View {
        Button(action: {
            count += amount
        }) {
            Text(title)
        }
        .background(Color.blue)
        .foregroundColor(.white)
        .padding(10)
    }
    
}
    #Preview {
        ContentView()
        
    }

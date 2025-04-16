import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("What's New in Photos")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                
                Contents1()
                Contents2()
                Contents3()
            }
            .padding(.top, 60)
            
            Spacer()
            
            Button {
                print("clicked")
            } label: {
                Text("Continue")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(15)
                    .padding(.horizontal, 120)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.bottom, 40)
        }
        .padding(.horizontal)
    }
}
#Preview {
    Onboarding()
}


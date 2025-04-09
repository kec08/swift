import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(alignment: .leading){
                
                HStack{
                    Image(systemName: "line.3.horizontal")
                        .font(.system(size: 35))
                        .padding(.bottom, 30)
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 35))
                        .padding(.bottom, 20)
                }
                
                Text("김은찬 할 일목록")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                
                ScrollView {
                    VStack(spacing: 10) {
                        MyBasicCard()
                        MyCard1()
                        MyCard2()
                        MyCard3()
                        MyCard4()
                        MyCard2()
                        MyCard1()
                    }
                }
            }
            .padding()
            
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 60, height: 60)
                .overlay {
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundStyle(Color.white)
                }
                .padding(.trailing, 20)
                .padding(.bottom, 20)
                .shadow(radius: 20)
        }
    }
}

#Preview {
    ContentView()
}


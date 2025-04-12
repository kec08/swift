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
                
                Text("할 일목록")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                
                ScrollView {
                    VStack(spacing: 10) {
                        MyBasicCard()
                        MyCard(title: "개인 프로젝트", time: "10 AM - 11 AM", images: "flame.fill", bgColor: .red)
                        MyCard(title: "넷플릭스 시청", time: "5 PM - 7 AM", images: "tv.fill", bgColor: .purple)
                        MyCard(title: "게임 하기", time: "7 AM - 8 AM", images: "gamecontroller.fill", bgColor: .yellow)
                        MyCard(title: "저녁 식사", time: "6 PM - 7 PM", images: "fork.knife", bgColor: .green)
                        MyCard(title: "잠 자기", time: "12 PM - 1 AM", images: "bed.double.fill", bgColor: .orange)
                        
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


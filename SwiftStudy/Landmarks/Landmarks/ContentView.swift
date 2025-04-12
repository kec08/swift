import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            SwiftUIView()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("경북소프트웨어 마이스터 고등학교")
                    .font(.title)
                HStack {
                    Text("경소마고")
                        .font(.subheadline)
                    Spacer()
                    Text("의성군")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("아아아아아")
                    .font(.title2)
                Text("오지마세요")
            }
            .padding()
            
            Spacer()
        }
    }
}


#Preview {
    ContentView()
}

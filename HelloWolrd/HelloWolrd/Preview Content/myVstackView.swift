import SwiftUI

struct myVstackView: View {
    
    // 데이터를 연동시킨다
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 50))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 50))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 50))
        }
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)  // <-- 수정
    }
}

struct myVstackView_Previews: PreviewProvider {
    static var previews: some View {
        myVstackView()
    }
}


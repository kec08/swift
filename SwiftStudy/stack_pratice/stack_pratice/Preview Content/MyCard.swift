    import SwiftUI

    struct MyCard: View {
        var title: String
        var time: String
        var images: String
        var bgColor: Color

        var body: some View {
            HStack(spacing: 20) {
                Image(systemName: images)
                    .font(.system(size: 50))
                    .foregroundColor(.white)

                VStack(alignment: .leading, spacing: 0) {
                    Divider().opacity(0)

                    Text(title)
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                    Text(time)
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .padding(.top, 5)
                }
            }
            .padding(20)
            .background(bgColor)
            .cornerRadius(20)
        }
    }

    struct MyCard_Previews: PreviewProvider {
        static var previews: some View {
            MyCard(title: "개인 프로젝트", time: "10 AM - 11 AM", images: "flame.fill", bgColor: .red)

        }
    }

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let MatchFruitsName: String
    let price: Int
}

struct ListLoop: View {
    
    @State var favoriteFruits = [
        Fruit(name: "Appel", MatchFruitsName: "Banana", price: 1000),
        Fruit(name: "Banana", MatchFruitsName: "Banana", price: 2000),
        Fruit(name: "Cherry", MatchFruitsName: "Cherry", price: 3000),
        Fruit(name: "Cherry", MatchFruitsName: "Cherry", price: 4000),
        Fruit(name: "Cherry", MatchFruitsName: "Cherry", price: 5000),
    ]
    
    @State var fruitName: String = ""
    
    var body: some View {
        VStack {
            Text("Fruit List")
                .font(.system(size: 35))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
            
            HStack {
                TextField("insert fruit name", text: $fruitName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                    favoriteFruits.append(Fruit(name: fruitName,
                                                MatchFruitsName: "Apple",
                                                price: 1000))
                } label: {
                    Text("insert")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                }
            }
            .padding()
            
            NavigationStack {
                List {
                    ForEach(favoriteFruits, id: \.self) { fruit in
                        VStack(alignment: .leading) {
                            Text("name: \(fruit.name)")
                            Text("MatchFruitsName: \(fruit.MatchFruitsName)")
                            Text("price: \(fruit.price)")
                        }
                    }.onDelete { indexSet in
                        favoriteFruits.remove(atOffsets: indexSet)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ListLoop()
}


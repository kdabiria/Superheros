//
//  ShowSuperhero.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 7/30/21.
//

import SwiftUI

struct ShowSuperhero: View {
    @State var searchText = ""
    @State var searching = false
    @State var selected: Bool = false
    
    var body: some View {
            VStack() {
                
                HStack {
                    SearchBar(searchText: $searchText, searching: $searching)
                    if searching {
                        Button("Cancel") {
                            searchText = ""
                            withAnimation {
                                searching = false
                                UIApplication.shared.dismissKeyboard()
                            }
                        }
                        .padding(.trailing)
                        .padding(.leading, 0)
                        .foregroundColor(.blue)
                        .transition(.move(edge: .trailing))
                        .animation(.spring())
                    }
                }
                
                List {
                    ForEach(allHero.filter({ (theHero: String) -> Bool in
                        return theHero.contains(searchText) || searchText == ""
                        }), id: \.self, content: {
                            hero in MyListView(hero: hero)
                        }
                    )
                }
                .listStyle(GroupedListStyle())
                .navigationBarTitle("Heros")
                .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

extension Image {
    func data(url: URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}

struct ShowSuperhero_Previews: PreviewProvider {
    static var previews: some View {
        ShowSuperhero()
    }
}

//
//  ShowSuperhero.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 7/30/21.
//

import SwiftUI

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

struct ShowSuperhero: View {
    
    @State var searchText = ""
    @State var searching = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
//            HStack {
            SearchBar(serchText: $searchText, searching: $searching)
            if searching {
                Button("Cancel") {
                    searchText = ""
                    withAnimation {
                        searching = false
                        UIApplication.shared.dismissKeyboard()
                    }
                }.padding(.trailing)
                .padding(.leading, 0)
                .foregroundColor(.gray)
                .transition(.move(edge: .trailing))
                .animation(.spring())
            }
//            }

            List {
                ForEach(allHero.filter({ (theHero: String) -> Bool in
                    return theHero.hasPrefix(searchText) || searchText == ""
                    }), id: \.self, content: {
                        hero in MyListview(hero: hero)
                    }
                )
            }
            .navigationTitle(searching ? "Searching" : "Heros")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct MyListview: View {

    @State var isAlert = true;

    @State var heroData = heroInfo(id: "1", name: "", image: heroImage(url: "background"), biography: heroBiography(fullName: "", alterEgos: "", placeOfBirth: "", firstAppearance: "", publisher: "", alignment: "" ), appearance: Appearance(gender: "", race: "", height: [""], weight: [""], eyeColor: "", hairColor: ""), work: heroWork(occupation: "", base: ""), connections: Connection(groupAffiliation: "", relatives: ""), powerstats: Powerstats(intelligence: "", strength: "", speed: "", durability: "", power: "", combat: ""))
    
    func getData(nameOfHero: String) {
//        let urlString = "https://superheroapi.com/api/5750045291732827/search/\(nameOfHero)"
        let urlString = "https://superheroapi.com/api/5750045291732827/\(nameOfHero)"
        let url = URL(string: urlString)
        
        URLSession.shared.dataTask(with: url!) { data, _, error in
            DispatchQueue.main.async {
                if data != nil {
                    do {
                        let decoder = JSONDecoder()
                        let decodedData = try decoder.decode(heroInfo.self, from: data!)
                        self.heroData = decodedData
                    } catch {
                        print("Error! \(error)")
                    }
                }
            }
        }.resume()
    }
    
    var hero: String
    @State var tapped = false
    
    var body: some View {
        NavigationLink(
            destination: HeroDetailsView(eachHero: heroData),
            isActive: Binding<Bool> (get: {tapped}, set: {tapped = $0; getData(nameOfHero: allHeroDict[hero]!)}) ,
            label: {
                Text(hero)
            })
            .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ShowSuperhero_Previews: PreviewProvider {
    static var previews: some View {
        ShowSuperhero()
    }
}

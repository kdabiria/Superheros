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
    let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W", "X","Y", "Z"]
    @State var searchText = ""
    @State var searching = false
    @State var selected: Bool = false
    
    var body: some View {
//        ZStack {
//            LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea(.all)
            VStack() {
                
                HStack {
                    SearchBar(serchText: $searchText, searching: $searching)
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
                
//                ScrollView(showsIndicators: false) {
//                    VStack(alignment: .leading) {
//                        ForEach(allHero.filter({ (theHero: String) -> Bool in
//                                return theHero.hasPrefix(searchText) || searchText == ""
//                                }), id: \.self, content: {
//                                    hero in MyListview(hero: hero)
//                                    Divider()
//
//                                }
//                        )
//                    }
//                    .padding(.leading)
//                }
//                .navigationBarTitle("Heros")
//                .navigationBarTitleDisplayMode(.inline)

                
                List {
                    ForEach(allHero.filter({ (theHero: String) -> Bool in
                        return theHero.contains(searchText) || searchText == ""
                        }), id: \.self, content: {
                            hero in MyListview(hero: hero)
//                                .onTapGesture {
//                                    selected.toggle()
//                                }
//                                .listRowBackground(selected ? Color(UIColor.systemGroupedBackground) : Color(UIColor.systemGroupedBackground))
                        }
                    )
                }
                .listStyle(GroupedListStyle())
                .navigationBarTitle("Heros")
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

    @State var heroData = heroInfo(id: "1", name: "", image: heroImage(url: "background"), biography: heroBiography(fullName: "", alterEgos: "", placeOfBirth: "", firstAppearance: "", publisher: "", alignment: "" ), appearance: Appearance(gender: "", race: "", height: [""], weight: [""], eyeColor: "", hairColor: ""), work: heroWork(occupation: "", base: ""), connections: Connection(groupAffiliation: "", relatives: ""), powerstats: Powerstats(intelligence: "", strength: "", speed: "", durability: "", power: "", combat: ""))
    
    @State var isLoading = false
    func getData(nameOfHero: String) {
        isLoading = true
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
            isLoading = false
        }.resume()
    }
    
    var hero: String
    @State var tapped = false
    
    var body: some View {
        NavigationLink(
            destination: HeroDetailsView(eachHero: heroData, isLoading: $isLoading),
            isActive: Binding<Bool> (get: {tapped}, set: {tapped = $0; getData(nameOfHero: allHeroDict[hero]!)}) ,
            label: {
                Text(hero)
//                    .foregroundColor(.black)
//                    .padding(.leading)
            })
//            .buttonStyle(PlainButtonStyle())
//            .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ShowSuperhero_Previews: PreviewProvider {
    static var previews: some View {
        ShowSuperhero()
    }
}

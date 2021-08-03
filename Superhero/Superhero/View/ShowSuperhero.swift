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
    @State var heroData = Hero(results: [heroInfo(id: "1", name: "Kam", image: heroImage(url: "background"))])
    
    func getData(nameOfHero: String) {
        let urlString = "https://superheroapi.com/api/5750045291732827/search/\(nameOfHero)"
        let url = URL(string: urlString)
        
        URLSession.shared.dataTask(with: url!) { data, _, error in
            DispatchQueue.main.async {
                if let heroData = data {
                    do {
                        let decoder = JSONDecoder()
                        let decodedData = try decoder.decode(Hero.self, from: data!)
                        self.heroData = decodedData
                    } catch {
                        print("Error! \(error)")
                    }
                }
            }
        }.resume()
    }
    
    @State var searchText = ""
    @State var searching = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                SearchBar(serchText: $searchText, searching: $searching)
                Button("Search") {
                    if !searchText.isEmpty {
                        getData(nameOfHero: searchText)
                    }
                }.padding()
                .foregroundColor(.gray)
            }

            List(heroData.results) {
                hero in MyListview(eachHero: hero)

            }
            .navigationTitle(searching ? "Searching" : "Heros")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                if searching {
                    Button("Cancel") {
                        searchText = ""
                        withAnimation {
                            searching = false
                            UIApplication.shared.dismissKeyboard()
                        }
                    }
                }
            })
        }
    }
}

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct MyListview: View {
    var eachHero: heroInfo
    var body: some View {
        
        NavigationLink(
            destination: HeroDetailsView(eachHero: eachHero),
            label: {
                HStack() {
                    VStack(alignment: .leading, spacing: 2.0) {
//                        Text(eachHero.id)
                        Text(eachHero.name)
                    }
                    Spacer()
                    Image(systemName: "eye.slash")
                        .data(url: URL(string: eachHero.image.url)!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 150)
                }
            })
        
        
//        .background(Color.gray)
    }
}

//need to change this late to get data from API
//var myHeros = [
//    Hero(id: 1, name: "Batman", age: 40),
//    Hero(id: 2, name: "Superman", age: 30),
//    Hero(id: 3, name: "Zoom", age: 55),
//    Hero(id: 4, name: "Spiderman", age: 21),
//]

struct ShowSuperhero_Previews: PreviewProvider {
    static var previews: some View {
        ShowSuperhero()
    }
}

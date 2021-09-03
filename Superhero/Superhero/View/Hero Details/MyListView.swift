//
//  MyListView.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 9/1/21.
//

import SwiftUI

struct MyListView: View {

    @State var heroData = heroInfo(id: "1", name: "", image: heroImage(url: "background"), biography: heroBiography(fullName: "", alterEgos: "", placeOfBirth: "", firstAppearance: "", publisher: "", alignment: "" ), appearance: Appearance(gender: "", race: "", height: [""], weight: [""], eyeColor: "", hairColor: ""), work: heroWork(occupation: "", base: ""), connections: Connection(groupAffiliation: "", relatives: ""), powerstats: Powerstats(intelligence: "", strength: "", speed: "", durability: "", power: "", combat: ""))
    
    @State var isLoading = false
    func getData(nameOfHero: String) {
        isLoading = true
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
            })
    }
}


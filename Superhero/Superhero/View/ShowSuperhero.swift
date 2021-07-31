//
//  ShowSuperhero.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 7/30/21.
//

import SwiftUI

struct ShowSuperhero: View {
    var theHeros: [Hero]
    var body: some View {
        List(theHeros) {
            hero in MyListview(eachHero: hero)
        }.navigationTitle("Heros")
    }
}

struct MyListview: View {
    var eachHero: Hero
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 2.0) {
                Text(eachHero.name)
                Text(String(eachHero.age))
            }
            Spacer()
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 150)
        }
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
        ShowSuperhero(theHeros: myHeros)
    }
}

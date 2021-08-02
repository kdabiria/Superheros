//
//  Home.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 7/29/21.
//

import SwiftUI

struct Home: View {

//    var check = Heros()
    var body: some View {

        TabView {
            NavigationView {
                NavigationLink(
                    destination: ShowSuperhero(),
                    label: {
                        Text("Find Superhero")
                    })
    //            .navigationBarBackButtonHidden(true)
                    .navigationTitle("Home")
                        .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Home")
            }
        }
        
        
    }
}

//var myHeros = [
//    Hero(id: 1, name: "Batman", age: 40),
//    Hero(id: 2, name: "Superman", age: 30),
//    Hero(id: 3, name: "Zoom", age: 55),
//    Hero(id: 4, name: "Spiderman", age: 21),
//]

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

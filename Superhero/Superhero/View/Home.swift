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
                ShowSuperhero()
            }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Home")
            }
            NavigationView {
                Quiz()
            }
            .tabItem {
                Image(systemName: "pencil.circle.fill")
                Text("Quiz")
            }
            
            NavigationView {
                Zodiac()
            }
            .tabItem {
                Image(systemName: "questionmark.circle.fill")
                Text("Zodiac")
            }
        }
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

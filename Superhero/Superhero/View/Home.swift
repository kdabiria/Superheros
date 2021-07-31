//
//  Home.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 7/29/21.
//

import SwiftUI

struct Home: View {
    @State var changeTitle:Bool = false;
    var body: some View {
//        NavigationView {
//            Text("Home")
//                .font(.largeTitle)
//                .navigationTitle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Title@*/Text("Title")/*@END_MENU_TOKEN@*/)
        NavigationLink(
            destination: ShowSuperhero(theHeros: myHeros),
            label: {
                Text("Find Superhero")
            })
//                .navigationTitle("Home")

//        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

var myHeros = [
    Hero(id: 1, name: "Batman", age: 40),
    Hero(id: 2, name: "Superman", age: 30),
    Hero(id: 3, name: "Zoom", age: 55),
    Hero(id: 4, name: "Spiderman", age: 21),
]

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

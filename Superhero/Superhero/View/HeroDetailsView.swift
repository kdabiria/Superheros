//
//  HeroDetailsView.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/2/21.
//

import SwiftUI

struct HeroDetailsView: View {
    
    var eachHero: heroInfo
    var body: some View {
        VStack {
            Image(systemName: "eye.slash")
                .data(url: URL(string: eachHero.image.url)!)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .cornerRadius(12)
                .padding()
            Text("Name: \(eachHero.name)")
                .font(.title2)
                .fontWeight(.semibold).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        }
    }
}

var dumbHero = [heroInfo(id: "1", name: "Kam", image: heroImage(url: "background"))]

struct HeroDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetailsView(eachHero: dumbHero.first!)
    }
}

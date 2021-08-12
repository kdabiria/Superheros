//
//  HeroDetailsView.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/2/21.
//

import SwiftUI

struct HeroDetailsView: View {
    
    var eachHero: heroInfo
//    var heroInfos: [heroInfo]
    var body: some View {
//        List(heroInfos) {
//            hero in heroList(eachHero: hero)
//        }
        heroList(eachHero: eachHero)
    }
}


struct heroList: View {
    var eachHero: heroInfo
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Image(systemName: "eye.slash")
                        .data(url: URL(string: eachHero.image.url)!)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .cornerRadius(12)
                        .padding()
                    Text("Superhero Name: \(eachHero.name)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    VStack {
                        Text("PowersStat")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        HStack() {
                            if(eachHero.powerstats.intelligence == "null") {
                                Text("Intelligence: -")
                                    .font(.title3)
                            }
                            else {
                                Text("Intelligence: \(eachHero.powerstats.intelligence)")
                                    .font(.title3)
                            }
                            Spacer()
                            if(eachHero.powerstats.strength == "null") {
                                Text("Intelligence: -")
                                    .font(.title3)
                            }
                            else {
                                Text("Strength: \(eachHero.powerstats.strength)")
                                    .font(.title3)
                            }
                        }
                        .padding()
                        HStack {
                            if(eachHero.powerstats.speed == "null") {
                                Text("Speed: -")
                                    .font(.title3)
                            }
                            else {
                                Text("Speed: \(eachHero.powerstats.speed)")
                                    .font(.title3)
                            }
                            Spacer()
                            if(eachHero.powerstats.durability == "null") {
                                Text("Durability: -")
                                    .font(.title3)
                            }
                            else {
                                Text("Durability: \(eachHero.powerstats.durability)")
                                    .font(.title3)
                            }
                        }
                        .padding()
                        HStack {
                            if(eachHero.powerstats.power == "null") {
                                Text("Power: -")
                                    .font(.title3)
                            } else {
                                Text("Power: \(eachHero.powerstats.power)")
                                    .font(.title3)
                            }
                            Spacer()
                            if(eachHero.powerstats.combat == "null") {
                                Text("Combat: -")
                                    .font(.title3)
                            } else {
                                Text("Combat: \(eachHero.powerstats.combat)")
                                    .font(.title3)
                            }
                        }
                        .padding()
                    }
                    
                    Text("Biography:")
                        .font(.title)
                    Text("Full Name: \(eachHero.biography.fullName)")
                        .font(.title3)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    Text("Place of Birth: \(eachHero.biography.placeOfBirth)")
                        .font(.title3)
                        .multilineTextAlignment(.center)
//                        .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: false)
//                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("Alter Egos: \(eachHero.biography.alterEgos)")
                        .font(.title3)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("Gender: \(eachHero.appearance.gender)")
                        .font(.title3)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    if eachHero.appearance.race != "null" {
                        Text("Race: \(eachHero.appearance.race)")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                        
                    }
                    else {
                        Text("Race: -")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                    }
//                    Text("Height: \(eachHero.appearance.height.first)")
//                        .font(.title3)
//                    Text("Weight: \(eachHero.appearance.weight.first)")
//                        .font(.title3)
                    Text("Eye Color: \(eachHero.appearance.eyeColor)")
                        .font(.title3)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                }
                .padding(.horizontal)
                Group {
                    Text("Hair Color: \(eachHero.appearance.hairColor)")
                        .font(.title3)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("Occupation: \(eachHero.work.occupation)")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    Text("Base: \(eachHero.work.base)")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    Text("First Appearance: \(eachHero.biography.firstAppearance)")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    Text("Publisher: \(eachHero.biography.publisher)")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    Text("Alignment: \(eachHero.biography.alignment)")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    Text("Group Affiliation: \(eachHero.connections.groupAffiliation)")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    Text("Relatives: \(eachHero.connections.relatives)")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    
                    
                }
                .padding(.horizontal)
            }

        }

    }
}

var dumbHero = [heroInfo(id: "1", name: "Kam", image: heroImage(url: "background"), biography: heroBiography(fullName: "Kamyar Dabiri", alterEgos: "None", placeOfBirth: "USA", firstAppearance: "dc", publisher: "ME", alignment: "GOOD" ), appearance: Appearance(gender: "Male", race: "White", height: ["6'10"], weight: ["200"], eyeColor: "balck", hairColor: "Blonde"), work: heroWork(occupation: "-", base: "CA"), connections: Connection(groupAffiliation: "Group", relatives: "relatives"), powerstats: Powerstats(intelligence: "1", strength: "1", speed: "1", durability: "1", power: "1", combat: "1"))]

//struct HeroDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeroDetailsView(eachHero: dumbHero.first!)
//    }
//}

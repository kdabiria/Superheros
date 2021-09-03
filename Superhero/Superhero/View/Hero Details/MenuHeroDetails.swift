//
//  MenuHeroDetails.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 9/1/21.
//

import SwiftUI

struct MenuHeroDetails: View {
    var eachHero: heroInfo
    var num: String
    var body: some View {
//        GeometryReader { geo in
        ZStack {
            if num == "0" {
                VStack() {
                    Text("PowersStat")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()

                        if(eachHero.powerstats.intelligence == "null") {
                            Text("Intelligence: -")
                                .font(.title3)
                        }
                        else {
                            Text("Intelligence: \(eachHero.powerstats.intelligence)")
                                .font(.title3)
                        }

                        if(eachHero.powerstats.strength == "null") {
                            Text("Intelligence: -")
                                .font(.title3)
                        }
                        else {
                            Text("Strength: \(eachHero.powerstats.strength)")
                                .font(.title3)
                        }

                        if(eachHero.powerstats.speed == "null") {
                            Text("Speed: -")
                                .font(.title3)
                        }
                        else {
                            Text("Speed: \(eachHero.powerstats.speed)")
                                .font(.title3)
                        }

                        if(eachHero.powerstats.durability == "null") {
                            Text("Durability: -")
                                .font(.title3)
                        }
                        else {
                            Text("Durability: \(eachHero.powerstats.durability)")
                                .font(.title3)
                        }

                        if(eachHero.powerstats.power == "null") {
                            Text("Power: -")
                                .font(.title3)
                        } else {
                            Text("Power: \(eachHero.powerstats.power)")
                                .font(.title3)
                        }

                        if(eachHero.powerstats.combat == "null") {
                            Text("Combat: -")
                                .font(.title3)
                        } else {
                            Text("Combat: \(eachHero.powerstats.combat)")
                                .font(.title3)
                        }
                }
                .frame(minWidth: UIScreen.main.bounds.width - 100 , maxWidth: UIScreen.main.bounds.width - 100, minHeight: UIScreen.main.bounds.height / 3 , maxHeight: UIScreen.main.bounds.height / 3)
                .padding(.bottom)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                )
                .offset(x: 0, y: 50)
                .padding(.top, 25)
                
            }
            else if num == "1" {
                VStack {
                    ScrollView {
                        Text("Biography")
                            .font(.title)
                            .padding()
                        Text("Full Name: \(eachHero.biography.fullName)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                        Text("Place of Birth: \(eachHero.biography.placeOfBirth)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)

                        Text("Alter Egos: \(eachHero.biography.alterEgos)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("Gender: \(eachHero.appearance.gender)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        if eachHero.appearance.race != "null" {
                            Text("Race: \(eachHero.appearance.race)")
                                .font(.title3)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)

                        }
                        else {
                            Text("Race: -")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                        }

                        Text("Eye Color: \(eachHero.appearance.eyeColor)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                        Text("Hair Color: \(eachHero.appearance.hairColor)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("Relatives")
                            .font(.title)
                            .padding()
        
                        Text("\(eachHero.connections.relatives)")
                            .font(.title3)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                    }
        //                        .frame(minWidth: 350, maxWidth: 350, maxHeight: .infinity)
        //            .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.3)
  
//                    .offset(x: 0, y: 150)
                }
                .frame(minWidth: UIScreen.main.bounds.width - 100 , maxWidth: UIScreen.main.bounds.width - 100, minHeight: UIScreen.main.bounds.height / 3 , maxHeight: UIScreen.main.bounds.height / 3)
                .padding(.bottom)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                )
                .offset(x: 0, y: 50)
                .padding(.top, 25)
            }
            else if num == "2" {
                VStack {
                    ScrollView {
                        Text("First Appearance")
                            .font(.title)
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .padding()
                        Text("\(eachHero.biography.firstAppearance)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                        
                        Text("Occupation")
                            .font(.title)
                            .padding()
                        Text("\(eachHero.work.occupation)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                    }
        //                        .frame(minWidth: 350, maxWidth: 350, maxHeight: .infinity)

                }
                .frame(minWidth: UIScreen.main.bounds.width - 100 , maxWidth: UIScreen.main.bounds.width - 100, minHeight: UIScreen.main.bounds.height / 3 , maxHeight: UIScreen.main.bounds.height / 3)
                .padding(.bottom)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                )
                .offset(x: 0, y: 50)
                .padding(.top, 25)
            }
            else if num == "3" {
                VStack {
                    ScrollView {
                        Text("Work Base")
                            .font(.title)
                            .padding()
                        Text("\(eachHero.work.base)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                        
                        Text("Group Affiliation")
                           .font(.title)
                           .lineLimit(2)
                           .multilineTextAlignment(.center)
                           .padding()
       
                       Text("\(eachHero.connections.groupAffiliation)")
                           .font(.title3)
                           .lineLimit(nil)
                           .fixedSize(horizontal: false, vertical: true)
                           .multilineTextAlignment(.center)
                    }
        //                        .frame(minWidth: 350, maxWidth: 350, maxHeight: .infinity)
        //            .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.3)
                   
                } .frame(minWidth: UIScreen.main.bounds.width - 100 , maxWidth: UIScreen.main.bounds.width - 100, minHeight: UIScreen.main.bounds.height / 3 , maxHeight: UIScreen.main.bounds.height / 3)
                .padding(.bottom)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                )
                .offset(x: 0, y: 50)
                .padding(.top, 25)
            }
            
            else if num == "4" {
                VStack {
                    ScrollView {
                        Text("First Appearance")
                            .font(.title)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                            .padding()
                        Text("\(eachHero.biography.firstAppearance)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                        Text("Other")
                            .font(.title)
                            .padding()
                        Text("Publisher: \(eachHero.biography.publisher)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                        Text("Alignment: \(eachHero.biography.alignment)")
                            .font(.title3)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                    }
        //                        .frame(minWidth: 350, maxWidth: 350, maxHeight: .infinity)
        //            .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.3)
                  
                }
                .frame(minWidth: UIScreen.main.bounds.width - 100 , maxWidth: UIScreen.main.bounds.width - 100, minHeight: UIScreen.main.bounds.height / 3 , maxHeight: UIScreen.main.bounds.height / 3)
                .padding(.bottom)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                )
                .offset(x: 0, y: 50)
                .padding(.top, 25)
            }
        }
    }
}


//
//  HeroDetailsView.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/2/21.
//

import SwiftUI

struct HeroDetailsView: View {
    
    var eachHero: heroInfo
    @Binding var isLoading: Bool
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            
            VStack {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                        .scaleEffect(3)
                }
                else {
                    Button(action: {
                           self.presentationMode.wrappedValue.dismiss()
                       }) {
                           HStack {
                               Image(systemName: "chevron.backward")
                                .foregroundColor(.white)
                                .padding(.leading)
                            Spacer()
                           }
                        }
                    heroList(eachHero: eachHero, isLoading: $isLoading)
                }
                    
            }
           
        }
        .navigationBarHidden(true)
    }
    
    
}


struct heroList: View {
    var eachHero: heroInfo
    @Binding var isLoading: Bool
    var body: some View {
        GeometryReader { geo in
            VStack {
                Group {
                    //systemName: "eye.slash"
                    Image(systemName: "eye.slash")
                        .data(url: URL(string: eachHero.image.url)!)
                        .resizable()
//                        .scaledToFit()
//                        .frame(height: 300)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(12)
                        .frame(width: geo.size.width)
//                        .cornerRadius(12)
    //                    .padding(.top, 250)
                    Text("Superhero Name: \(eachHero.name)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack( spacing: 50) {
                        VStack() {
                            Text("PowersStat")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .padding()
    //                        HStack() {
                                if(eachHero.powerstats.intelligence == "null") {
                                    Text("Intelligence: -")
                                        .font(.title3)
                                }
                                else {
                                    Text("Intelligence: \(eachHero.powerstats.intelligence)")
                                        .font(.title3)
                                }
    //                            Spacer()
                                if(eachHero.powerstats.strength == "null") {
                                    Text("Intelligence: -")
                                        .font(.title3)
                                }
                                else {
                                    Text("Strength: \(eachHero.powerstats.strength)")
                                        .font(.title3)
                                }
    //                        }
    //                        .padding()
                            
    //                        HStack {
                                if(eachHero.powerstats.speed == "null") {
                                    Text("Speed: -")
                                        .font(.title3)
                                }
                                else {
                                    Text("Speed: \(eachHero.powerstats.speed)")
                                        .font(.title3)
                                }
    //                            Spacer()
                                if(eachHero.powerstats.durability == "null") {
                                    Text("Durability: -")
                                        .font(.title3)
                                }
                                else {
                                    Text("Durability: \(eachHero.powerstats.durability)")
                                        .font(.title3)
                                }
    //                        }
    //                        .padding()
    //                        HStack {
                                if(eachHero.powerstats.power == "null") {
                                    Text("Power: -")
                                        .font(.title3)
                                } else {
                                    Text("Power: \(eachHero.powerstats.power)")
                                        .font(.title3)
                                }
    //                            Spacer()
                                if(eachHero.powerstats.combat == "null") {
                                    Text("Combat: -")
                                        .font(.title3)
                                } else {
                                    Text("Combat: \(eachHero.powerstats.combat)")
                                        .font(.title3)
                                }
    //                        }
    //                        .padding()
                        }
//                        .frame(minWidth: 350, maxWidth: 350, maxHeight: .infinity)
                        .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.3)
                        .padding()
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        )
                        
                        VStack() {
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
                        }
//                        .frame(minWidth: 350, maxWidth: 350, maxHeight: .infinity)
                        .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.3)
                        .padding(.bottom)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        )
                        
                        VStack {
                            Text("Occupation")
                                .font(.title)
                                .padding()
                            Text("\(eachHero.work.occupation)")
                                .font(.title3)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                        }
//                        .frame(minWidth: 350, maxWidth: 350, maxHeight: .infinity)
                        .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.3)
                        .padding(.bottom)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        )
                        
                        VStack {
                            Text("Work Base")
                                .font(.title)
                                .padding()
                            Text("\(eachHero.work.base)")
                                .font(.title3)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                        }
//                        .frame(minWidth: 350, maxWidth: 350, maxHeight: .infinity)
                        .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.3)
                        .padding(.bottom)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        )
                        
                        VStack {
                            Text("First Appearance")
                                .font(.title)
                                .lineLimit(2)
                                .multilineTextAlignment(.center)
                                .padding()
                            Text("\(eachHero.biography.firstAppearance)")
                                .font(.title3)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                        }
//                        .frame(minWidth: 350, maxWidth: 350, maxHeight: .infinity)
                        .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.3)
                        .padding(.bottom)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        )
                        
                        VStack {
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
                        .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.3)
                        .padding(.bottom)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: .black, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        )
                        
                        VStack {
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
                        .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.2)
                        .padding(.bottom)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        )
                        
                        VStack {
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
                        .frame(width: geo.size.width / 1.3, height: geo.size.height / 2.3)
                        .padding(.bottom)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        )
        
                    }
                    .padding()
                }
            }
        }
    }
}

var dumbHero = [heroInfo(id: "1", name: "Kam", image: heroImage(url: "background"), biography: heroBiography(fullName: "Kamyar Dabiri", alterEgos: "None", placeOfBirth: "USA", firstAppearance: "dc", publisher: "ME", alignment: "GOOD" ), appearance: Appearance(gender: "Male", race: "White", height: ["6'10"], weight: ["200"], eyeColor: "balck", hairColor: "Blonde"), work: heroWork(occupation: "-", base: "CA"), connections: Connection(groupAffiliation: "Group", relatives: "relatives"), powerstats: Powerstats(intelligence: "1", strength: "1", speed: "1", durability: "1", power: "1", combat: "1"))]

//struct HeroDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeroDetailsView(eachHero: dumbHero.first!, isLoading: false)
//    }
//}

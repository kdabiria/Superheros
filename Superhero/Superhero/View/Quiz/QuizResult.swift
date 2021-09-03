//
//  QuizResult.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 9/1/21.
//

import SwiftUI

struct QuizResult: View {
    @Binding var lvl: String
    @State var heroData: heroInfo
    var body: some View {
        if lvl == "1" {
            VStack(spacing: 20) {
                Text("You are \(heroData.name)")
                    .font(.title2)
                if heroData.powerstats.power != "null" {
                    Text("Power: \(heroData.powerstats.power)")
                        .font(.title2)
                }
                else {
                    Text("Power: -")
                        .font(.title2)
                }
                
                Spacer()
                
                Image(systemName: "eye.slash")
                    .data(url: URL(string: heroData.image.url)!)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .cornerRadius(12)
                
                Spacer()
                
//                    Button(action: {
//                        present.wrappedValue.dismiss()
//                    }, label: {
//                        Text("Quiz")
//                            .fontWeight(.heavy)
//                            .foregroundColor(Color("text"))
//                            .padding(.vertical)
//                            .frame(width: 100)
//                            .background(Color.blue)
//                            .cornerRadius(25)
//
//                    })
//                    .padding(.bottom, 20)
                
            }
            .padding()
        }
        else if lvl == "2" {
            VStack(spacing: 20) {
                Text("You are \(heroData.name)")
                    .font(.title2)
                if heroData.powerstats.speed != "null" {
                    Text("Speed: \(heroData.powerstats.speed)")
                        .font(.title2)
                }
                else {
                    Text("Speed: -")
                        .font(.title2)
                }
                
                Spacer()
                
                Image(systemName: "eye.slash")
                    .data(url: URL(string: heroData.image.url)!)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .cornerRadius(12)
                
                Spacer()
                
            }
            .padding()
        }
        else if lvl == "3" {
            VStack(spacing: 20) {
                Text("You are \(heroData.name)")
                    .font(.title2)
                if heroData.powerstats.intelligence != "null" {
                    Text("Intelligence: \(heroData.powerstats.intelligence)")
                        .font(.title2)
                }
                else {
                    Text("Intelligence: -")
                        .font(.title2)
                }
                
                Spacer()
                
                Image(systemName: "eye.slash")
                    .data(url: URL(string: heroData.image.url)!)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .cornerRadius(12)
                
                Spacer()
                
            }
            .padding()
        }
        else if lvl == "4" {
            VStack(spacing: 20) {
                Text("You are \(heroData.name)")
                    .font(.title2)
                if heroData.powerstats.combat != "null" {
                    Text("Combat: \(heroData.powerstats.combat)")
                        .font(.title2)
                }
                else {
                    Text("Combat: -")
                        .font(.title2)
                }
                
                Spacer()
                
                Image(systemName: "eye.slash")
                    .data(url: URL(string: heroData.image.url)!)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .cornerRadius(12)
                
                Spacer()
                
            }
            .padding()
        }
    }
}


//
//  QuestionVIew.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/6/21.
//

import SwiftUI

struct QuestionVIew: View {
    @Binding var question: QAContainer
    @Binding var lvl: String
    @State var isLoading  = false
    
    @State var index:Int = 1
    
    @State var selected = ""
    @State private var toDisable = false
    @State private var submitDisable = false
    @State var showHero = false
    
    @Environment(\.presentationMode) var present
    
    @State var heroData: heroInfo = heroInfo(id: "1", name: "", image: heroImage(url: "background"), biography: heroBiography(fullName: "", alterEgos: "", placeOfBirth: "", firstAppearance: "", publisher: "", alignment: "" ), appearance: Appearance(gender: "", race: "", height: [""], weight: [""], eyeColor: "", hairColor: ""), work: heroWork(occupation: "", base: ""), connections: Connection(groupAffiliation: "", relatives: ""), powerstats: Powerstats(intelligence: "", strength: "", speed: "", durability: "", power: "", combat: ""))
    
    func getData(nameOfHero: String) {
        isLoading = true
//        let urlString = "https://superheroapi.com/api/5750045291732827/search/\(nameOfHero)"
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
    
    func powerSup(){
        var randomHeroArray: [String] = []
        var highestPower: [String] = []
        isLoading = true
        for _ in 1...3 {
            let randomHero: String = allHero.randomElement()!
//            randomHeroArray[0] = randomHero!
            getData(nameOfHero: allHeroDict[randomHero]!)
            highestPower.append(heroData.powerstats.power)
            if heroData.powerstats.power == "null" {
                continue
            }
            else if randomHeroArray.isEmpty {
                highestPower.append(heroData.powerstats.power)
                randomHeroArray.append(randomHero)
            }
            else {
                if Int(randomHeroArray[0]) ?? 0 < Int(heroData.powerstats.power) ?? 0{
                    highestPower[0] = heroData.powerstats.power
                    randomHeroArray[0] = randomHero
                }
            }
        }
    }
    
    var body: some View {
        if showHero {
            if isLoading {
                VStack {
                    Spacer()
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                        .scaleEffect(3)
                    Spacer()
                }
            }
            else {
                QuizResult(lvl: $lvl, heroData: heroData)
            }
        }
        else {
            VStack(spacing:22) {
                Text(question.getQAholder(key: "q\(index)")["q"]!)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("text"))
                    .padding(.top, 25)
                
                Spacer()
                
                Button(action: {selected = question.getQAholder(key: "q\(index)")["a"]!}, label: {
                    Text(question.getQAholder(key: "q\(index)")["a"]!)
                        .foregroundColor(Color("text"))
                        .padding()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(color(option: question.getQAholder(key: "q\(index)")["a"]!), lineWidth: 1)
                        )
                })
                
                Button(action: {selected = question.getQAholder(key: "q\(index)")["b"]!}, label: {
                    Text(question.getQAholder(key: "q\(index)")["b"]!)
                        .foregroundColor(Color("text"))
                        .padding()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(color(option: question.getQAholder(key: "q\(index)")["b"]!), lineWidth: 1)
                        )
                })
                
                Button(action: {selected = question.getQAholder(key: "q\(index)")["c"]!}, label: {
                    Text(question.getQAholder(key: "q\(index)")["c"]!)
                        .foregroundColor(Color("text"))
                        .padding()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(color(option: question.getQAholder(key: "q\(index)")["c"]!), lineWidth: 1)
                        )
                })
                
                Spacer(minLength:  0)
                
                //Buttons
                
                HStack {
                    Button(action: {
                        if !selected.isEmpty {
                            index += 1
                            if index == 4{
                                toDisable = true
                                showHero = true
                                powerSup()
                            }
                            else {
                                toDisable = false
                            }
                            
                        }
                        
                    }, label: {
                        Text("Submit")
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                            .padding(.vertical)
                            .frame(width: 100)
                            .background(Color.blue)
                            .cornerRadius(15)
                    })

                }
                .padding(.bottom)
                
            }
            .padding()
            .cornerRadius(25)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom))
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            )
        }
    }
    
    func color(option: String) -> Color {
        if option == selected {
            return Color.blue
        }
        else {
            return Color.black
        }
    }
    
    //store answer
    
}

//struct QuestionVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestionVIew()
//    }
//}

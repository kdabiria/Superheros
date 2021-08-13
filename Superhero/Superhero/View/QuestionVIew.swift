//
//  QuestionVIew.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/6/21.
//

import SwiftUI

struct QuestionVIew: View {
    @Binding var question: QAContainer
    @State var index:Int = 1
    
    @State var selected = ""
    @State private var toDisable = true
    @State private var submitDisable = false
    @State var showHero = false
    
    @Environment(\.presentationMode) var present
    
    @State var heroData: heroInfo = heroInfo(id: "1", name: "", image: heroImage(url: "background"), biography: heroBiography(fullName: "", alterEgos: "", placeOfBirth: "", firstAppearance: "", publisher: "", alignment: "" ), appearance: Appearance(gender: "", race: "", height: [""], weight: [""], eyeColor: "", hairColor: ""), work: heroWork(occupation: "", base: ""), connections: Connection(groupAffiliation: "", relatives: ""), powerstats: Powerstats(intelligence: "", strength: "", speed: "", durability: "", power: "", combat: ""))
    
    func getData(nameOfHero: String) {
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
        }.resume()
    }
    
    func powerSup(){
        var randomHeroArray: [String] = []
        var highestPower: [String] = []
        
        for _ in 1...3 {
            var randomHero: String = allHero.randomElement()!
//            randomHeroArray[0] = randomHero!
            getData(nameOfHero: allHeroDict[randomHero]!)
            highestPower.append(heroData.powerstats.power)
            if heroData.powerstats.power == "null" {
                continue
            }
            else if randomHeroArray.isEmpty {
                print("here")
                highestPower.append(heroData.powerstats.power)
                randomHeroArray.append(randomHero)
            }
            else {
                print("arry is \(randomHeroArray.isEmpty)")
                if Int(randomHeroArray[0]) ?? 0 < Int(heroData.powerstats.power) ?? 0{
                    highestPower[0] = heroData.powerstats.power
                    randomHeroArray[0] = randomHero
                }
            }
        }
        
//        print("array of random hero: \(randomHeroArray)")
        
//        return heroData
    
    }
    
    var body: some View {
        if showHero {
            VStack(spacing: 20) {
                Text("You are \(heroData.name)")
                Spacer()
                Image(systemName: "eye.slash")
                    .data(url: URL(string: heroData.image.url)!)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .cornerRadius(12)
                
                Spacer()
                
                Button(action: {
                    present.wrappedValue.dismiss()
                }, label: {
                    Text("Go Quiz")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("text"))
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 150)
                        .background(Color.blue)
                        .cornerRadius(25)

                })
                
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
                            submitDisable = true
                            if index == 3{
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
                            .frame(maxWidth: .infinity)
                            .background(submitDisable ? Color.gray : Color.blue)
                            .cornerRadius(15)
                    })
                    .disabled(submitDisable)
                    
                    Button(action: {
    //                    withAnimation()
    //                    QuestionVIew(question: question, index: index + 1)
    //                    question.complete.toggle()
                        submitDisable = false
                        toDisable = true
                        index += 1
                        print("Next clicked! \(index)")
                        if index == 3{
                            toDisable = true
                        }
                    }, label: {
                        Text("Next")
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(toDisable ? Color.gray : .blue)
                            .cornerRadius(15)
                    })
                    .disabled(toDisable)
                }
                .padding(.bottom)
                
            }
            .padding()
//            .background(Color("SearchBar"))
            .cornerRadius(25)
//            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
//            .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
        }

    }
    
    func color(option: String) -> Color {
        if option == selected {
            return Color.blue
        }
        else {
            return Color.gray
        }
    }
    
    //store answer
    
}

//struct QuestionVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestionVIew()
//    }
//}

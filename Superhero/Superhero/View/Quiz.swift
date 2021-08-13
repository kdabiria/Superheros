//
//  Quiz.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/4/21.
//

import SwiftUI

struct Quiz: View {
    @State var show = false
    @State var show2 = false
    @State var quizInfo = ""
    @State var level = ""
    
    @State var holder = QAContainer(QAholder: powerQA)

    var body: some View {
        VStack {
            Text("Find which \nSuperhro you are")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 8)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            //level view
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 35 ,content: {
                
                VStack(spacing: 15) {
                    Image("lvl1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 150)
                    
        
                    Text("Power Quiz")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    Text("Level 1")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(height: 250)
                .background(Color("SearchBar"))
                .cornerRadius(15)
                // opening QA
                .onTapGesture {
                    show.toggle()
                    level = "1"
                    holder.setQAholder(newDict: powerQA)
                }
                .sheet(isPresented: $show, content: {
                    QA(lvl: $level, data: holder)
                })

                VStack(spacing: 15) {
                    Image("lvl2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 150)
                    
                
                    Text("Speed Quiz")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                
                    Text("Level 2")
                        .foregroundColor(.black)
                }
//                    .accessibilityElement(children: .contain)
//                    .accessibilityIdentifier(String(index))
                .padding()
                .frame(height: 250)
                .background(Color("SearchBar"))
                .cornerRadius(15)
                // opening QA
                .onTapGesture {
                    show.toggle()
                    level = "2"
                    holder.setQAholder(newDict: speedQA)
                }
                .sheet(isPresented: $show, content: {
                    QA(lvl: $level,data: holder)
                })
                
                VStack(spacing: 15) {
                    Image("lvl3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 150)
                    
            

                    Text("Intelligence Quiz")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.04)
                                
                
                    Text("Level 3")
                        .foregroundColor(.black)
                }
//                    .accessibilityElement(children: .contain)
//                    .accessibilityIdentifier(String(index))
                .padding()
                .frame(height: 250)
                .background(Color("SearchBar"))
                .cornerRadius(15)
                // opening QA
                .onTapGesture {
                    show.toggle()
                    level = "3"
                    holder.setQAholder(newDict: intelligenceQA)
                }
                .sheet(isPresented: $show, content: {
                    QA(lvl: $level,data: holder)
                })
                
                VStack(spacing: 15) {
                    Image("lvl4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 150)
                    

                    Text("Combat Quiz")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                            
                    Text("Level 4")
                        .foregroundColor(.black)
                }
//                    .accessibilityElement(children: .contain)
//                    .accessibilityIdentifier(String(index))
                .padding()
                .frame(height: 250)
                .background(Color("SearchBar"))
                .cornerRadius(15)
                // opening QA
                .onTapGesture {
                    show.toggle()
                    level = "4"
                    holder.setQAholder(newDict: combatQA)
                }
                .sheet(isPresented: $show, content: {
                    QA(lvl: $level,data: holder)
                })
            })
            .padding()
            
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea())
        .navigationTitle("Quiz")
        .navigationBarTitleDisplayMode(.inline)
//        .sheet(isPresented: $show, content: {
//            QA()
//        })
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}

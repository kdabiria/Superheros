//
//  Quiz.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/4/21.
//

import SwiftUI

struct Quiz: View {
    @State var show = false
    
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
                // four level
                ForEach(1...4, id: \.self) { index in
                    
                    VStack(spacing: 15) {
                        Image("lvl\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 150)
                        
                        switch index {
                            case 1:
                                Text("Power Quiz")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                            case 2:
                                Text("Speed Quiz")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                            case 3:
                                Text("Intelligence Quiz")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                                    .minimumScaleFactor(0.04)
                                    
                            case 4:
                                Text("Combat Quiz")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                                
                            default:
                                Text("NO Quiz")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                        }
                    
                        Text("Level \(index)")
                            .foregroundColor(.black)
                    }
                    .padding()
                    .frame(height: 250)
                    .background(Color.white)
                    .cornerRadius(15)
                    // opening QA
                    .onTapGesture {
                        show.toggle()
                    }
                    
                }
            })
            .padding()
            
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea())
        .navigationTitle("Quiz")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $show, content: {
            QA()
        })
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}

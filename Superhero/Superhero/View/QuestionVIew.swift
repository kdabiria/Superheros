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
    
    var body: some View {
        if showHero {
            VStack {
                Text("YOUR ARE Superman")
            }
        }
        else {
            VStack(spacing:22) {
                Text(question.getQAholder(key: "q\(index)")["q"]!)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.top, 25)
                
                Spacer()
                
                Button(action: {selected = question.getQAholder(key: "q\(index)")["a"]!}, label: {
                    Text(question.getQAholder(key: "q\(index)")["a"]!)
                        .foregroundColor(.black)
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
                        .foregroundColor(.black)
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
                        .foregroundColor(.black)
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
            .background(Color.white)
            .cornerRadius(25)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
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

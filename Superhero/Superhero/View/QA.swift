//
//  QA.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/4/21.
//

import SwiftUI

struct QA: View {
    @Binding var lvl: String

    @State var data: QAContainer
    
    @Environment(\.presentationMode) var present

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            VStack {
                HStack(alignment: .top){
                    Button(action: {
                        present.wrappedValue.dismiss()
                    }, label: {
                        Text("Done")
                            .font(.title3)
                            .foregroundColor(.black)
                            .fontWeight(.light)
//                            .frame(width: 50)
//                            .background(Color.blue)
//                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .padding(.leading,20)
                    })
                    Spacer()
                    Text("Quiz")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .padding(.leading, 20)
                    
                    Spacer()
                    Spacer()
                }
                .padding(.top,20)
                
                ZStack {
                    QuestionVIew(question: $data, lvl: $lvl)
//
                }
                .padding()
            }
//            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            .background(Color("SearchBar"))
//            .ignoresSafeArea()
        }
    }
}

//struct QA_Previews: PreviewProvider {
//    static var previews: some View {
//        QA(lvl: <#Binding<String>#>)
//    }
//}

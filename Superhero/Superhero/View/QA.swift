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

    var body: some View {
        VStack {
            Text("Quiz")
                .font(.title2)
                .fontWeight(.heavy)
//                .foregroundColor(.black)
                .padding(.top, 25)
            ZStack {
                QuestionVIew(question: $data, lvl: $lvl)

            }
            .padding()
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color("SearchBar"))
        .ignoresSafeArea()
    }
}

//struct QA_Previews: PreviewProvider {
//    static var previews: some View {
//        QA(lvl: <#Binding<String>#>)
//    }
//}

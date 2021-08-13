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
                QuestionVIew(question: $data)

            }
            .padding()
        }
    }
}

//struct QA_Previews: PreviewProvider {
//    static var previews: some View {
//        QA(lvl: <#Binding<String>#>)
//    }
//}

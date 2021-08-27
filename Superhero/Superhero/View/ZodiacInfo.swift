//
//  ZodiacInfo.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/18/21.
//

import SwiftUI

struct ZodiacInfo: View {
    @Binding var info: zodiacHeros
    @Environment(\.presentationMode) var present
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom)
            VStack {
                HStack {
                    Button(action: {
                        present.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                    })

                }
                .padding(.top)
                ScrollView {
                    
                    VStack {
                        Text("\(info.name): \(info.image)")
                            .font(.largeTitle)
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding(.top, 35)
                        
                        Image(info.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350, alignment: .center)
                            .padding(.bottom, 50)
                        
                        HStack(alignment: .center) {
                            Spacer()
                            Text(info.info)
                                .font(.system(size: 20, weight: .regular, design: .serif))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                        }
                            
                        
                        HStack(alignment: .center) {
                            Text(info.extraInfo)
                                .font(.system(size: 20, weight: .regular, design: .serif))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                        }
                        
                        Spacer()
                            
                    }
                    .padding()
                }
            }
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

//struct ZodiacInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        ZodiacInfo(info: zodiacHero[0])
//    }
//}

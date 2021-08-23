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
//            Image("background")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .blur(radius: 1.8)
            
            LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom)
            
            ScrollView {
                
                VStack {
                    HStack {
                        Button(action: {
                            present.wrappedValue.dismiss()
                        }, label: {
                            Text("Done")
//                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.light)
    //                            .frame(width: 50)
    //                            .background(Color.blue)
    //                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
//                                .padding(.leading,20)
                        })
                        Spacer()
                    }
                    
//                    Spacer()
                    Text("\(info.name): \(info.image)")
                        .font(.system(size: 50, weight: .regular, design: .serif))
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
//                .padding(.top, 50)
                .padding()
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

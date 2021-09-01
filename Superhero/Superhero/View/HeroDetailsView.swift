//
//  HeroDetailsView.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/2/21.
//

import SwiftUI

struct HeroDetailsView: View {
    
    var eachHero: heroInfo
    @Binding var isLoading: Bool
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            
            VStack {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                        .scaleEffect(3)
                }
                else {
                    Button(action: {
                           self.presentationMode.wrappedValue.dismiss()
                       }) {
                           HStack {
                               Image(systemName: "chevron.backward")
                                .foregroundColor(.white)
                                .padding(.leading)
                            Spacer()
                           }
                        }
                    heroList(eachHero: eachHero)
                }
            }
           
        }
        .navigationBarHidden(true)
    }
    
    
}

//struct HeroDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeroDetailsView(eachHero: dumbHero.first!, isLoading: false)
//    }
//}

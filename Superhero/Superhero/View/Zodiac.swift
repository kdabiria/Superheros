//
//  Zodiac.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/17/21.
//

import SwiftUI

struct Zodiac: View {
    @State var tap = false
    
    var counter = 1
    var body: some View {
        
        ZStack() {
            
            LinearGradient(gradient: Gradient(colors: [Color("Start"), Color("Middle"), Color("End")]), startPoint: .top, endPoint: .bottom)
            
            VStack() {
                Spacer()
                Text("Zodiac Signs")
                    .font(.system(size: 56, weight: .bold, design: .serif))
                    .italic()
                    .foregroundColor(.white)
                    .padding(.vertical,50.0)
                    .padding(.horizontal)
                
                Spacer()
                
                VStack(spacing: 20) {
                    
                    HStack(spacing: 30) {
                        ForEach(zodicImg) { img in
                            CircleButton(item: img, tap: $tap)
                        }
                    }
                    
                    HStack(spacing: 30) {
                        ForEach(zodicImg2) { img in
                            CircleButton(item: img, tap: $tap)
                        }
                    }
                    
                    HStack(spacing: 30) {
                        ForEach(zodicImg3) { img in
                            CircleButton(item: img, tap: $tap)
                        }
                    }
                    
                    HStack(spacing: 30) {
                        ForEach(zodicImg4) { img in
                            CircleButton(item: img, tap: $tap)
                        }
                    }
                }
                .padding()
                
                Spacer()
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct Zodiac_Previews: PreviewProvider {
    static var previews: some View {
        Zodiac()
    }
}

struct CircleButton: View {
    var item: zodiacNames
    @Binding var tap: Bool
    var body: some View {
        
        Button(action: {
            tap.toggle()
        }, label: {
            VStack {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .background(Color.black.opacity(0.5))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text(item.name)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(.white)
            }
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        })
        .sheet(isPresented: $tap, content: {
            Text("nothing yet")
        })
    }
}

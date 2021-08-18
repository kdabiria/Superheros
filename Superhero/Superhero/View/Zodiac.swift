//
//  Zodiac.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/17/21.
//

import SwiftUI

struct Zodiac: View {
    @State var tap = false
//    @State var idx = 0
    @State var data: zodiacHeros
//    var counter = 1
    
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
                
                
                VStack(spacing: 20) {
                    
                    HStack(spacing: 30) {
                        
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[0]
                        }, label: {
                            VStack {
                                Image(zodicImg[0].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg[0].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                       
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[1]
                        }, label: {
                            VStack {
                                Image(zodicImg[1].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg[1].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                        
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[2]
                        }, label: {
                            VStack {
                                Image(zodicImg[2].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg[2].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                        
//                        ForEach(zodicImg) { img in
//                            CircleButton(item: img, tap: $tap, index: $idx)
//                        }
                    }

                    HStack(spacing: 30) {
                        
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[3]
                        }, label: {
                            VStack {
                                Image(zodicImg2[0].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg2[0].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                       
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[4]
                        }, label: {
                            VStack {
                                Image(zodicImg2[1].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg2[1].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                        
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[5]
                        }, label: {
                            VStack {
                                Image(zodicImg2[2].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg2[2].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                        
//                        ForEach(zodicImg) { img in
//                            CircleButton(item: img, tap: $tap, index: $idx)
//                        }
                    }
                    
                    HStack(spacing: 30) {
                        
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[6]
                        }, label: {
                            VStack {
                                Image(zodicImg3[0].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg3[0].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                       
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[7]
                        }, label: {
                            VStack {
                                Image(zodicImg3[1].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg3[1].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                        
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[8]
                        }, label: {
                            VStack {
                                Image(zodicImg3[2].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg3[2].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                        
//                        ForEach(zodicImg) { img in
//                            CircleButton(item: img, tap: $tap, index: $idx)
//                        }
                    }
                    
                    HStack(spacing: 30) {
                        
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[9]
                        }, label: {
                            VStack {
                                Image(zodicImg4[0].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg4[0].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                       
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[10]
                        }, label: {
                            VStack {
                                Image(zodicImg4[1].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg4[1].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                        
                        Button(action: {
                            tap.toggle()
                            data = zodiacHero[11]
                        }, label: {
                            VStack {
                                Image(zodicImg4[2].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(zodicImg4[2].name)
                                    .font(.system(.headline, design: .serif))
                                    .foregroundColor(.white)
                            }
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        })
                        .sheet(isPresented: $tap, content: {
                            ZodiacInfo(info: $data)
                        })
                        
//                        ForEach(zodicImg) { img in
//                            CircleButton(item: img, tap: $tap, index: $idx)
//                        }
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
        Zodiac(data: zodiacHero[0])
    }
}

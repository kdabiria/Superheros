//
//  ContentView.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 7/29/21.
//

import SwiftUI

struct ContentView: View {
    @State var username:String = ""
    @State var password:String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack(spacing: 5.0) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    VStack {
                        TextField("Username", text:$username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        SecureField("Password", text:$password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    Spacer()
                    NavigationLink(
                        destination: Home(),
                        label: {
                            Text("Login")
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                        })
                    
                    NavigationLink(
                        destination: Register(),
                        label: {
                            Text("Register")
                                .font(.title2)
                                .foregroundColor(Color.white)
                        })
//                    Button(action: {
//                        print("Cliked me")
//                    }) {
//                        Text("Login")
//                            .font(.system(size: 25))
//                            .foregroundColor(Color.white)
//    //                        .background(RoundedRectangle(cornerRadius: 8).fill(Color.white))
//                    }
                    Spacer()
                        
                }
                .padding(80)
            }
            .background(
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .blur(radius: 5.0)
                
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

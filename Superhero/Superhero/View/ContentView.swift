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
    
    @State var reg = false
    
    var body: some View {
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
                
                Button("Login", action: loginButton)
                    .font(.largeTitle)
                    .foregroundColor(.white)
//                    NavigationLink(
//                        destination: Home(),
//                        label: {
//                            Text("Login")
//                                .font(.largeTitle)
//                                .foregroundColor(Color.white)
//                        })
                Button("Register", action: {
                    self.reg.toggle()
                })
                    .font(.title2)
                    .foregroundColor(.white)
                .sheet(isPresented: $reg, content: {
                    Register()
                })
                
//                    NavigationLink(
//                        destination: Register(),
//                        label: {
//                            Text("Register")
//                                .font(.title2)
//                                .foregroundColor(Color.white)
//                        })
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
}

func loginButton() {
    if let window = UIApplication.shared.windows.first {
        window.rootViewController = UIHostingController(rootView: Home())
        window.makeKeyAndVisible()
    }
}

//func registerButton() {
//    reg.toggle()
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

//
//  heroList.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 9/1/21.
//

import SwiftUI

struct heroList: View {
    var eachHero: heroInfo
    @State var showInfo = false
//    @Binding var isLoading: Bool
    
    @State var isActivated = false
    @ObservedObject var menuVM = MenuViewModel()
    var body: some View {
        ZStack {
            menuVM.selectedMenu.menuView
            
//            VStack {
//                Image(systemName: "eye.slash")
//                    .data(url: URL(string: eachHero.image.url)!)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .cornerRadius(12)
//
//
//                Text("Name: \(eachHero.name)")
//                    .font(.title2)
//                    .fontWeight(.semibold)
//                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    .padding(.top, 10)
//            }
            
            ZStack {
                Color.black.opacity(isActivated ? 0.2 : 0)
                GeometryReader { geo in
                    VStack {
                        Text("Name: \(eachHero.name)")
                            .font(.largeTitle)
                            .bold()
                        Image(systemName: "eye.slash")
                            .data(url: URL(string: eachHero.image.url)!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(12)
//                            .frame(width: 450, height: 250)
                            .frame(width: geo.size.width / 4, height: geo.size.height / 4)
                        Divider()
                        Text("Click buttons to see more information")
                            .font(.title3)
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                    
                        Spacer()
                    }
                }
//                VStack {
//                    Image(systemName: "eye.slash")
//                        .data(url: URL(string: eachHero.image.url)!)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .cornerRadius(12)
//
//
//                    Text("Name: \(eachHero.name)")
//                        .font(.title2)
//                        .fontWeight(.semibold)
//                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                        .padding(.top, 10)
//                }
                VStack {
                    Spacer()
                    ZStack {
                        ForEach(0..<menuVM.menus.count) { i in
                            MenuButton(eachHero: eachHero, isActivated: self.$isActivated, menuVM: self.menuVM, currentItemIndex: i)
                            
                        }
                        SelectedMenuButton(isActivated: self.$isActivated, menuItem: menuVM.selectedMenu)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(isActivated ? .all : .horizontal)
        .animation(.spring())

    }
}




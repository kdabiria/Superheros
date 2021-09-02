//
//  MenuViewModel.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 9/1/21.
//

import SwiftUI

class MenuViewModel: ObservableObject {
    @Published var menus: [MenuItem]  = [
        MenuItem(color: .black.opacity(0.9), icon: "bolt.circle", menuView: AnyView(VStack{}), selected: true),
        MenuItem(color: .black.opacity(0.9), icon: "info.circle", menuView: AnyView(Text("2 view")), selected: false),
        MenuItem(color: .black.opacity(0.9), icon: "bag.circle", menuView: AnyView(Text("3 view")), selected: false),
        MenuItem(color: .black.opacity(0.9), icon: "network", menuView: AnyView(Text("4 view")), selected: false),
        MenuItem(color: .black.opacity(0.9), icon: "ellipsis.circle", menuView: AnyView(Text("5 view")), selected: false),
    ]
    
    //computed property
    
    var selectedMenu: MenuItem {
        guard let selected = menus.filter({ $0.selected }).first else {
            fatalError("You need to set one of the menuItem in menuViewModel.menus as selected: true ")
        }
        return selected
    }
}


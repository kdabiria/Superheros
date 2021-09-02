//
//  MenuItem.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 9/1/21.
//

import SwiftUI

struct MenuItem {
    let id = UUID()
    let color: Color
    let icon: String
    var menuView: AnyView
    var selected: Bool
}


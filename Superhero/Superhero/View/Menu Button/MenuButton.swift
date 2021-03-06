//
//  MenuButton.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 9/1/21.
//

import SwiftUI

struct MenuButton: View {
    var eachHero: heroInfo
    @Binding var isActivated: Bool
    @ObservedObject var menuVM: MenuViewModel
    var currentItemIndex: Int
    
//    var menuView: AnyView
    var body: some View {
        
        let menuItem = menuVM.menus[currentItemIndex]
        return Circle()
            .fill(menuItem.color)
            .frame(width: isActivated ? 50 : 20, height: isActivated ? 50 : 20)
            .shadow(radius: 5)
            .overlay(Image(systemName: menuItem.icon))
            .foregroundColor(.white)
            .offset(x: isActivated ? calcOffset().x : 0, y: isActivated ? calcOffset().y : -10)
            .onTapGesture {
                self.isActivated.toggle()
                self.updateSelected()
            }
    }
    
    func updateSelected() {
        let menuItem = menuVM.menus[currentItemIndex]
        for i in 0..<menuVM.menus.count {
            menuVM.menus[i].selected = menuItem.id == menuVM.menus[i].id
            menuVM.menus[i].menuView = AnyView(MenuHeroDetails(eachHero: self.eachHero, num: String(i)))
        }
        
    }
    
    func updateViews() {
        for i in 0..<menuVM.menus.count {
            menuVM.menus[i].menuView = AnyView(MenuHeroDetails(eachHero: self.eachHero, num: String(i)))
        }
    }
    
    func calcOffset() -> (x: CGFloat, y: CGFloat) {
        switch menuVM.menus.count {
        case 2:
            switch currentItemIndex {
                case 0:
                    return (-70, -70)
                default:
                    return (70, -70)
            }
        case 3:
            switch currentItemIndex {
                case 0:
                    return (-70, -70)
                case 1:
                    return (0, -110)
                default:
                    return (70, -70)
                
            }
        case 4:
            switch currentItemIndex {
                case 0:
                    return (-90, -40)
                case 1:
                    return (-45, -110)
                case 2:
                    return (45, -110)
                default:
                    return (90, -40)
            }
        
        default:
            switch currentItemIndex {
            case 0:
                    return(-100, -20)
                case 1:
                    return(-70, -80)
                case 2:
                    return(0, -110)
                case 3:
                    return(70, -80)
                default:
                    return(100, -20)
            }
        }
    }
}

struct SelectedMenuButton: View {
    @Binding var isActivated: Bool
    var menuItem: MenuItem
    
    var body: some View {
        Circle()
            .fill(menuItem.color)
            .frame(width: 50, height: 50)
            .shadow(radius: 5)
            .overlay(Image(systemName: menuItem.icon))
            .foregroundColor(.white)
            .offset(x: 0, y: isActivated ? -20 : -10)
            .onTapGesture {
                self.isActivated.toggle()
            }
    }
}


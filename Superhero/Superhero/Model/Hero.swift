//
//  Hero.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 7/30/21.
//

import SwiftUI


struct Hero: Decodable {
//    var id = UUID()
    let results: [heroInfo]
}

struct heroInfo: Decodable, Identifiable {
    let id: String
    let name: String
    let image: heroImage
//    let biography: heroBiography
}

struct heroImage: Decodable {
    let url: String
}
//
//struct heroBiography: Decodable {
//    fields
//}

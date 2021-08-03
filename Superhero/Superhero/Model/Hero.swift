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
    let biography: heroBiography
    let appearance: Appearance
    let work: heroWork
    let connections : Connection
    let powerstats: Powerstats
}

struct heroImage: Decodable {
    let url: String
}

struct heroBiography: Decodable {
    let fullName: String
    let alterEgos: String
    let placeOfBirth: String
    let firstAppearance: String
    let publisher: String
    let alignment: String
    
    enum CodingKeys: String, CodingKey {
        case fullName = "full-name"
        case alterEgos = "alter-egos"
        case placeOfBirth = "place-of-birth"
        case firstAppearance = "first-appearance"
        case publisher = "publisher"
        case alignment = "alignment"
    }
}

struct Appearance: Decodable {
    let gender: String
    let race: String
    let height: [String]
    let weight: [String]
    let eyeColor: String
    let hairColor: String
    
    enum CodingKeys: String, CodingKey {
        case gender = "gender"
        case race = "race"
        case height = "height"
        case weight = "weight"
        case eyeColor = "eye-color"
        case hairColor = "hair-color"
    }
}

struct heroWork: Decodable {
    let occupation: String
    let base: String
}

struct Connection: Decodable {
    let groupAffiliation : String
    let relatives : String
    
    enum CodingKeys: String, CodingKey {
        case groupAffiliation = "group-affiliation"
        case relatives = "relatives"
    }
}

struct Powerstats: Decodable {
    let intelligence: String
    let strength: String
    let speed: String
    let durability: String
    let power: String
    let combat: String
}

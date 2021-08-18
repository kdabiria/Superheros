//
//  ZodiacContainer.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/17/21.
//

import Foundation


struct zodiacNames: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

var zodicImg = [
    zodiacNames(name: "Virgo", image: "virgo"),
    zodiacNames(name: "Taurus", image: "taurus"),
    zodiacNames(name: "Scorpio", image: "scorpio")
]
var zodicImg2 = [
    zodiacNames(name: "Sagittarius", image: "sagittarius"),
    zodiacNames(name: "Pisces", image: "pisces"),
    zodiacNames(name: "Libra", image: "libra")
]

var zodicImg3 = [
    zodiacNames(name: "Leo", image: "leo"),
    zodiacNames(name: "Gemini", image: "gemini"),
    zodiacNames(name: "Capricorn", image: "capricorn")
]
var zodicImg4 = [
    zodiacNames(name: "Cancer", image: "cancer"),
    zodiacNames(name: "Aries", image: "aries"),
    zodiacNames(name: "Aqvarius", image: "aqvarius")
]


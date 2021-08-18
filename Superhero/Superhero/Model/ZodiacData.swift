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

struct zodiacHeros: Identifiable {
    var id: Int
    var name: String
    var image: String
    var info: String
    var extraInfo: String
}

var zodiacHero = [
    zodiacHeros(id: 1, name: "Virgo", image: "Spider-Man",
                info: "When it comes to Virgos, they are often harder on themselves than anyone else. This describes Spider-Man to a tee. He beats himself up all the time for his failures and blames himself for everything that happens to him or his loved ones. That makes sense since he has lost so many people close to him.",
                extraInfo: "However, another Virgo trait is working harder than anyone to overcome these doubts and criticisms. A Virgo is often analytical and perceptive, and these are traits that Peter Parker has in spades."),
    
    zodiacHeros(id: 2, name: "Taurus", image: "Gambit",
                info: "Gambit is the popular Cajun member of the X-Men, a hero who can throw any object after infusing it with kinetic energy as an explosive weapon. He also has several of the negative traits of the Taurus zodiac sign, including his jealousy, stubbornness, and possessiveness.",
                extraInfo: "As a member of the Thieve's Guild, he is someone who has a taste for the finer things in life, another Taurus trait. As shown with his relationship with Rogue, Gambit is sensual and has exquisite taste when it comes to love, making him a perfect Taurus."),
    zodiacHeros(id: 3, name: "Scorpio", image: "Green Lantern",
                info: "The biggest trait of Green Lantern in DC Comics is that he is a man who knows no fear. That is one of the traits of the Scorpio in the zodiac signs, as they are brave and focused, both traits that Hal Jordan needed to become the greatest Lantern in the universe.",
                extraInfo: "Scorpios are also secretive and dominating, two other traits that Jordan took on as an intergalactic peacekeeper who takes his oath and role seriously. He is also faithful to his oath as well as his friends, another major trait of the Scorpio sign."),
    zodiacHeros(id: 4, name: "Sagittarius", image: "Hulk",
                info: "Hulk is a superhero and a scientist, and at times, in the comics, he merged these two personalities into one. A Sagittarius is a person who is always seeking the truth and thirsting for knowledge, which describes the Bruce Banner portion of Hulk's personality.",
                extraInfo: "A Sagittarius is also someone who is highly enthusiastic, which describes Hulk on several different levels. The Sagittarius is also the wildest of the zodiac signs, and there are few heroes wilder, or more brutal, than Hulk."),
    zodiacHeros(id: 5, name: "Pisces", image: "Aquaman",
                info: "The Pisces zodiac sign is connected to the symbol of the fish, so it makes sense that the man who can speak to fish should share its characteristics. Aquaman is the King of Atlantis and the protector of the seas, and a Pisces is a person who works hard to live in an environment where they can fulfill their dreams.",
                extraInfo: "Aquaman is also empathetic of the world around him, as well as emotional and selfless when it comes to helping those he has sworn to protect. A Pisces is also moody and an escapist and this also describes Authur, who needs his time away from the action to readjust."),
    zodiacHeros(id: 6, name: "Libra", image: "Superman",
                info: "A Libra is a zodiac symbol of a person who is always balanced and fair. They look for what is right in the world and fight to keep that balance, which is exactly the sort of wholesome superhero Superman is in DC Comics. He is someone who knows right from wrong and he seeks the balance of all life, always seeing the big picture.",
                extraInfo: "Superman is also very smart and diplomatic, and he will often find a way out of trouble by talking and working his way through a situation, which is another trait of the Libras. He is a very powerful figure and does everything he can to help others."),
    zodiacHeros(id: 7, name: "Leo", image: "Wonder Woman",
                info: "A Leo is a natural-born leader, based on the connection with the powerful lion. They are people who sit back and know that everyone else will respect their position and understand their strength. There are few superheroes better put in this position than Wonder Woman, a character who knows her worth and never backs down.",
                extraInfo: "Wonder Woman is also larger than life, and while Leo's are considered to have large egos, it can also be a person who has all the confidence in the world, and there is never a fight Wonder Woman believes she could ever lose."),
    zodiacHeros(id: 8, name: "Gemini", image: "Iron Man",
                info: "When it comes to Geminis, their personalities are often infectious, and there might not be a member of the Marvel Universe with a bigger personality than Tony Stark. Iron Man might be an armored superhero, but he is also someone who is known to speak his mind and makes sure everyone knows he is in the room.",
                extraInfo: "Iron Man is also highly energetic and always on the move, another trait of Geminis. He will never back down from a fight and he will often push other people's buttons when he knows they are getting the best of him."),
    zodiacHeros(id: 9, name: "Capricorn", image: "Professor X",
                info: "A Capricorn is a hardworking, loyal, and ambitious person who is also overly serious and critical. These traits fit the leader of the X-Men, Professor Charles Xavier. He put the team together with the ambition to create a peaceful harmony with humans who hate and fear mutants.",
                extraInfo: "In recent comics, Xavier created Krakoa as an independent nation of mutants where they live in peace and enjoy diplomatic immunity. This shows his ambitious goals, while also maintaining another Capricorn trait, that of great suspicion concerning the world they live in."),
    zodiacHeros(id: 10, name: "Cancer", image: "Captain America",
                info: "Captain America is a selfless man who gave his entire life to his country, becoming not only its greatest warrior in a time of need but allowing himself to become the symbol for the United States of America. He does this with his strong faith, an important trait of Cancers.",
                extraInfo: "Captain America is not only a great and powerful warrior, but he is also a smart and creative tactician, another Cancer trait. He is also tender-hearted, wears his heart on his sleeve, and is often overprotective and courageous, almost to a fault."),
    zodiacHeros(id: 11, name: "Aries", image: "Wolverine",
                info: "Wolverine is clearly an Aries on the zodiac chart -- an adventurous and bold warrior full of unbridled energy. An Aries is a person who lives life in their own terms, beliefs, and ideals, and that is the exact sort of person comic book fans know Wolverine is.",
                extraInfo: "Despite being a core X-Men member, he is never someone who allows anyone else to dictate who he is. An Aries is also known for their outbursts of anger, and Wolverine's episode of berzerker rage plays into this trait perfectly."),
    zodiacHeros(id: 12, name: "Aquarius", image: "Rocket Raccoon",
                info: "Aquarians are wise and analytical in nature. The Guardians of the Galaxy movies show how Rocket is a whiz at creating things, which is a trait from the comics as well. However, another big trait from the books is that Rocket is a brilliant detective, with a sharp analytical mind.",
                extraInfo: "Also, just like an Aquarius, Rocket, in the comics, is also impulsive, unpredictable, and stubborn, while also crossing the line one too many times when he gets agitated.")
    
    
    
]

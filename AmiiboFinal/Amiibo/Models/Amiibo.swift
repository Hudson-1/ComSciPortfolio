// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let amiibo = try? JSONDecoder().decode(Amiibo.self, from: jsonData)

import Foundation

// MARK: - Amiibo
struct Amiibo: Codable {
    let amiibo: [AmiiboElement]
}

// MARK: - AmiiboElement
struct AmiiboElement: Codable {
    let amiiboSeries: AmiiboSeries
    let character: String
    let gameSeries: String?
    let head: String
    let image: String
    let name: String
    let release: Release
    let tail: String
    let type: TypeEnum
}

enum AmiiboSeries: String, Codable {
    case animalCrossing = "Animal Crossing"
    case boxBoy = "BoxBoy!"
    case chibiRobo = "Chibi-Robo!"
    case diablo = "Diablo"
    case fireEmblem = "Fire Emblem"
    case kirby = "Kirby"
    case legendOfZelda = "Legend Of Zelda"
    case marioSportsSuperstars = "Mario Sports Superstars"
    case megaMan = "Mega Man"
    case metroid = "Metroid"
    case monsterHunter = "Monster Hunter"
    case monsterHunterRise = "Monster Hunter Rise"
    case others = "Others"
    case pikmin = "Pikmin"
    case pokemon = "Pokemon"
    case powerPros = "Power Pros"
    case shovelKnight = "Shovel Knight"
    case skylanders = "Skylanders"
    case splatoon = "Splatoon"
    case superMarioBros = "Super Mario Bros."
    case superNintendoWorld = "Super Nintendo World"
    case superSmashBros = "Super Smash Bros."
    case the8BitMario = "8-bit Mario"
    case yoshiSWoollyWorld = "Yoshi's Woolly World"
    case yuGiOh = "Yu-Gi-Oh!"
}

// MARK: - Release
struct Release: Codable {
    let au, eu, jp, na: String?
}

enum TypeEnum: String, Codable {
    case band = "Band"
    case card = "Card"
    case figure = "Figure"
    case yarn = "Yarn"
}

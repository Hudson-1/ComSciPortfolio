//
//  ContentView.swift
//  Amiibo
//
//  Created by Hudson Aibel on 1/24/23.
//

import Foundation

// MARK: - Amiibo
struct Amiibo: Codable {
    let amiibo: [AmiiboElement]
}

// MARK: - AmiiboElement
struct AmiiboElement: Codable {
    let amiiboSeries: String
    let character: String
    let gameSeries: String?
    let head: String
    let image: String
    let name: String
    let release: Release
    let tail: String
    let type: String
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

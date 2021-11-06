//
//  TeamDetailsModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 04/11/2021.
//

import Foundation

import Foundation

// MARK: - Root
struct Root: Codable {
    let id: Int
    let shortName: String
    let crestURL: String
    let squad: [Squad]
    enum CodingKeys: String, CodingKey {
        case id, shortName
        case crestURL
        case squad
    }
}
// MARK: - Squad
struct Squad: Codable {
    let id: Int
    let name: String
    let position: Position?

}

enum Position: String, Codable {
    case attacker = "Attacker"
    case defender = "Defender"
    case goalkeeper = "Goalkeeper"
    case midfielder = "Midfielder"
}


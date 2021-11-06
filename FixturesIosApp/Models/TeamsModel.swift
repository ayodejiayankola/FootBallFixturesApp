//
//  TeamsModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 04/11/2021.
//

import Foundation

// MARK: - Root
struct TeamRoot: Codable {
    let count: Int
    let competition: Competition
    let teams: [Team]
}
// MARK: - Team
struct Team: Codable {
    let id: Int
    let name, shortName: String
    let crestURL: String?
    enum CodingKeys: String, CodingKey {
        case id, name, shortName
        case crestURL
    }
}

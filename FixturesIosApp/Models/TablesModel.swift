//
//  TableModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 04/11/2021.
//

import Foundation

// MARK: - Root
struct SingleCompetitionRoot: Decodable {
    let id: Int
    let name: String
//    let currentSeason: Season
//    let seasons: [Season]
    let lastUpdated: Date

//    enum CodingKeys: String, CodingKey {
//        case id, name
//        case currentSeason, seasons, lastUpdated
//    }
}


//// MARK: - Season
//struct Season: Codable {
//    let id: Int
//    let startDate, endDate: String
//    let currentMatchday: Int?
//    let winner: Winner
//}



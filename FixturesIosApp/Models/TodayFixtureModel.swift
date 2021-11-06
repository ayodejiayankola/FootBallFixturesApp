//
//  TodayFixtureModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 04/11/2021.
//

import Foundation

// MARK: - Root
struct MatchRoot: Codable {
    let count: Int
    let matches: [TodayFixtureModel]
}

// MARK: - Match
struct TodayFixtureModel: Codable {
    let id: Int
    let utcDate: String?
    let matchday: Int
    let group: String?
    let lastUpdated: String?
    let score: Score
    let homeTeam: HomeTeam
    let awayTeam: AwayTeam
}

// MARK: - Score
struct Score: Codable {
    let winner: String?
    let duration: Duration
    let fullTime: FullTime
}
enum Duration: String, Codable {
    case regular = "REGULAR"
}
// MARK: - Full Time Score
struct FullTime: Codable {
    let homeTeam, awayTeam: Int?
}
// MARK: - HomeTeam
struct HomeTeam: Codable {
    let id: Int?
    let name: String?
}
// MARK: - AwayTeam
struct AwayTeam: Codable {
    let id: Int?
    let name: String?
}

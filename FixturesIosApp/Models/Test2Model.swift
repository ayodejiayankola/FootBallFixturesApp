//
//  Test2Model.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 06/11/2021.
//

import Foundation
import RealmSwift



//struct MatchRoot: Codable {
//    let count: Int
//    let matches: [TodayFixtureModel]
//}
//
//// MARK: - Match
//struct TodayFixtureModel: Codable {
//    let id: Int
//    let utcDate: String?
//    let matchday: Int
//    let group: String?
//    let lastUpdated: String?
//    let score: Score
//    let homeTeam: HomeTeam
//    let awayTeam: AwayTeam
//}
//
//// MARK: - Score
//struct Score: Codable {
//    let winner: String?
//    let duration: Duration
//    let fullTime: FullTime
//}
//enum Duration: String, Codable {
//    case regular = "REGULAR"
//}
//// MARK: - Full Time Score
//struct FullTime: Codable {
//    let homeTeam, awayTeam: Int?
//}


// MARK: - HomeTeam
//struct HomeTeam: Codable {
//    let id: Int?
//    let name: String?
//}

//struct AwayTeam: Codable {
//    let id: Int?
//    let name: String?
//}



//
//
// class  CompetitionRoot2: Object, Codable {
//     @objc dynamic var  count: Int = 0
//     var competitionsList = List<Competition2>()
//     
//     required convenience init(from decoder: Decoder) throws {
//         self.init()
//         let container = try decoder.container(keyedBy: CodingKeys.self)
//         count = try container.decode(Int.self, forKey: .count)
//         competitionsList = try container.decode(List<Competition2>.self, forKey: .competitionsList)   // this is problem.
//     }
// }
//
////MARK: - Competition
// class Competition2: Object,  Codable {
//     @objc dynamic var  id: Int =  0
//     @objc dynamic var  name: String?
//     
//     required convenience init(from decoder: Decoder) throws {
//         self.init()
//         let container = try decoder.container(keyedBy: CodingKeys.self)
//         id = try container.decode(Int.self, forKey: .id)
//         name = try container.decode(String.self, forKey: .name)
//     }
//}
//
//
//
//
//extension List : Decodable where Element : Decodable {
//    public convenience init(from decoder: Decoder) throws {
//        self.init()
//        var container = try decoder.unkeyedContainer()
//        while !container.isAtEnd {
//            let element = try container.decode(Element.self)
//            self.append(element)
//        }
//    } }
//
//extension List : Encodable where Element : Encodable {
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.unkeyedContainer()
//        for element in self {
//            try element.encode(to: container.superEncoder())
//        }
//    } }

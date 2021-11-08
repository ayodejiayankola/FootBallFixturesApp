//
//  TodayFixtureModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 04/11/2021.
//

import Foundation
import RealmSwift

// MARK: - MatchRoot
class  MatchRoot: Object, Codable {
    @objc dynamic var  count: Int = 0
    var matches = List<TodayFixtureModel>()
    
    required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        count = try container.decode(Int.self, forKey: .count)
        matches = try container.decode(List<TodayFixtureModel>.self, forKey: .matches)
    }
}

// MARK: - Match
class  TodayFixtureModel: Object, Codable {
    @objc dynamic var  id: Int = 0
    @objc dynamic var  utcDate: String?
    @objc dynamic var  matchday: Int = 0
    @objc dynamic var homeTeam: HomeTeam?
    @objc dynamic var awayTeam: AwayTeam?
    @objc dynamic var score: Score?
    
    required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        utcDate = try container.decode(String.self, forKey: .utcDate)
        matchday = try container.decode(Int.self, forKey: .matchday)
        homeTeam = try container.decode(HomeTeam.self, forKey: .homeTeam)
        awayTeam = try container.decode(AwayTeam.self, forKey: .awayTeam)
        score = try container.decode(Score.self, forKey: .score)
    }
}

// MARK: - Score
class  Score: Object, Codable {
    @objc dynamic var fullTime: FullTime?
    required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        fullTime = try container.decode(FullTime.self, forKey: .fullTime)
    }
}
//// MARK: - Full Time Score
class  FullTime: Object, Codable {
//    let age = RealmOptional<Int>()
    var homeTeam = RealmProperty<Int?>()
    var awayTeam = RealmProperty<Int?>()
}
// MARK: - HomeTeam

class HomeTeam: Object,  Codable {
    @objc dynamic var  id: Int =  0
    @objc dynamic var  name: String?
    required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
    }
}

// MARK: - AwayTeam
class AwayTeam: Object,  Codable {
    @objc dynamic var  id: Int =  0
    @objc dynamic var  name: String?
    required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
    }
}






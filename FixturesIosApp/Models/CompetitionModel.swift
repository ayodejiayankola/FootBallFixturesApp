//
//  CompetitionModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 04/11/2021.
//

import Foundation
import RealmSwift



class  CompetitionRoot: Object, Codable {
    @objc dynamic var  count: Int = 0
    var competitions = List<Competition>()
    
    required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        count = try container.decode(Int.self, forKey: .count)
        competitions = try container.decode(List<Competition>.self, forKey: .competitions)
    }
}
//MARK: - Competition
class Competition: Object,  Codable {
    @objc dynamic var  id: Int =  0
    @objc dynamic var  name: String?
    
    required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
    }
}

//
//  CompetitionModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 04/11/2021.
//

import Foundation

struct CompetitionRoot: Codable {
    let count: Int
    let competitions: [Competition]
}

// MARK: - Competition
struct Competition: Codable {
    let id: Int
    let name: String
}



//class CompetitionRoot: Object {
//    dynamic var competitions = List<Competition>()
//}
//
//class Competition: Object {
//    @objc dynamic var id: Int = 0
//    @objc dynamic var name: String = ""
//    override static func primaryKey() -> String? {
//        return "id"
//    }
//    required convenience init?(map: Map) {
//        self.init()
//    }
//
//    func mapping(map: Map) {
//        id <- map["id"]
//        value <- map["value"]
//        name <- map["name"]
//        days <- map["days"]
//
//    }
    
//}

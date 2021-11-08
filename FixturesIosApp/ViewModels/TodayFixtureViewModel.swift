//
//  TodayFixtureViewModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import Foundation
import RealmSwift

protocol MatchRootDelegate: AnyObject {
    func DidFetchMatches(mathes: MatchRoot?)
}

class TodayFixtureViewModel {
    var delegate: MatchRootDelegate?
    
    func fetchMatches() {
        let fullApiUrl = Config.baseUrl() + "matches"
        NetworkService.fetch(with: fullApiUrl, method: "GET", type: MatchRoot.self) {  success, response in
            if success {
                let realm = try! Realm()
                let data = response as? MatchRoot
                try! realm.write {
                    realm.deleteAll()
                    realm.add(data!)
                 }
                let result = realm.objects(MatchRoot.self)
                self.delegate?.DidFetchMatches(mathes: result[0])
            }
        }
    }
}

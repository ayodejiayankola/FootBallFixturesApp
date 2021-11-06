//
//  TodayFixtureViewModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import Foundation

protocol MatchRootDelegate: AnyObject {
    func DidFetchMatches(mathes: MatchRoot?)
}

class TodayFixtureViewModel {
    var delegate: MatchRootDelegate?
    
    func fetchMatches() {
        let fullUrl = Config.baseUrl() + "matches"
        NetworkService.fetch(with: fullUrl, method: "GET", type: MatchRoot.self) {  success, response in
            if success {
                let data = response as? MatchRoot
                self.delegate?.DidFetchMatches(mathes: data)
            }
        }
    }
}

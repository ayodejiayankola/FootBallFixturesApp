//
//  CompetitionsViewModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import Foundation

protocol CompetitionRootDelegate:AnyObject {
    func DidFetchCompetitions(competitions: CompetitionRoot?)
}
class CompetitionsViewModel {
    var competitionDelegate: CompetitionRootDelegate?
  
    func fetchCompetitions() {
        let fullApiUrl = Config.baseUrl() + "competitions"
        NetworkService.fetch(with: fullApiUrl, method: "GET", type: CompetitionRoot.self) { success, response in
            if success {
                print("output is \(response)")
                let competitionData = response as? CompetitionRoot
                self.competitionDelegate?.DidFetchCompetitions(competitions: competitionData)
            }
        }
    }
}



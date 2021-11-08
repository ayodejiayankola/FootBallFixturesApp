//
//  CompetitionsViewModel.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import Foundation
import RealmSwift

protocol CompetitionRootDelegate:AnyObject {
    func DidFetchCompetitions(competitions: CompetitionRoot?)
}
class CompetitionsViewModel {
    var competitionDelegate: CompetitionRootDelegate?
  
    func fetchCompetitions() {
        let fullApiUrl = Config.baseUrl() + "competitions"
        NetworkService.fetch(with: fullApiUrl, method: "GET", type: CompetitionRoot.self) { success, response in
            if success {
                
                let realm = try! Realm()
                let competitionData = response as? CompetitionRoot
                try! realm.write {
                    realm.deleteAll()
                    realm.add(competitionData!)
                 }
                let result = realm.objects(CompetitionRoot.self)
                self.competitionDelegate?.DidFetchCompetitions(competitions: result[0])
            }
        }
    }
}




//
//  DataManager.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 06/11/2021.
//

import Foundation
import RealmSwift


enum RuntimeError: Error {
    case NoRealmSet
}


class CompetitionList {
    
    var realm: Realm?
    
    public func saveCompetitionList(_ competitions: CompetitionRoot) throws
    {
        
        if (realm != nil) {
            try! realm!.write {
                realm!.add(competitions)
            }
        } else {
            throw RuntimeError.NoRealmSet
        }
    }
    

    
    public func deleteAllCompetitionsList() throws
    {
        if (realm != nil) {
            try! realm!.write {
                realm!.deleteAll()
            }
        } else {
            throw RuntimeError.NoRealmSet
        }
    }
    public func deleteAllCompetitionsList(_ competitionList: CompetitionRoot) throws {
        
        if (realm != nil) {
            
            let predicate = NSPredicate(
                format:  "count == %d AND id == %d AND issue == %@", competitionList.count, competitionList.competitions.first?.id as! CVarArg, competitionList.competitions.first?.name as! CVarArg)
            let targetComics = realm!.objects(CompetitionRoot.self).filter(predicate)
           
            var comics = targetComics.makeIterator()
            while let comic = comics.next() {
                try! realm!.write {
                    realm!.delete(comic)
                }
            }
        } else {
            throw RuntimeError.NoRealmSet
        }
    }
    
    
    public func createNewCompetitionsList(_ count: Int, name: String, id: Int ) -> CompetitionRoot
    {
        
        let newCompetitionsList = CompetitionRoot()
        newCompetitionsList.competitions.first?.id = id
        newCompetitionsList.competitions.first?.name = name
        newCompetitionsList.count = count
        return newCompetitionsList
    }
    
}



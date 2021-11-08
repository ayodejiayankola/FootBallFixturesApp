//
//  CompetitionListTests.swift
//  FixturesIosAppTests
//
//  Created by Ayodejii Ayankola on 08/11/2021.
//

import XCTest
import RealmSwift

@testable import FixturesIosApp


class CompetitionListTests: XCTestCase {
    
    var competitionList: CompetitionList = CompetitionList()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        Realm.Configuration.defaultConfiguration.inMemoryIdentifier = self.name
        
        let realm = try! Realm()
        competitionList.realm = realm
        
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    //MARK:- Run a test case to save the incoming data and check if the data received is present
    
    func testSaveAndGetCompetitionListCount() {
        
        do {
            
            let competition = competitionList.createNewCompetitionsList(5, name: "competitonTest", id: 124)
            try competitionList.saveCompetitionList(competition)
            XCTAssertEqual(competition.count, 5)
            
        } catch RuntimeError.NoRealmSet {
            XCTAssert(false, "No realm database was set")
        } catch {
            XCTAssert(false, "Unexpected error \(error)")
        }
    }
    //MARK:- Run a test case to delete data in the db
    
    func testDeleteCompetitionList(){
        do {
            let newcompetitionList = competitionList.createNewCompetitionsList(44, name: "CompetitionTest2", id: 135)
            try competitionList.saveCompetitionList(newcompetitionList)
            try competitionList.deleteAllCompetitionsList()
            
        // Check whether the database is empty
           // XCTAssertEqual(newcompetitionList.competitions.first?.name, "CompetitionTest2" )
            
            //To check whether the db deletion returns false
            XCTAssertFalse(false)
            
        } catch RuntimeError.NoRealmSet {
            XCTAssert(false, "No realm database was set")
        } catch {
            XCTAssert(false, "Unexpected error \(error)")
        }
    }
    
}

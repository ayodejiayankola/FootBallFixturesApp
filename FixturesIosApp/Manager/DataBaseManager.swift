//
//  DataManager.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 06/11/2021.
//

import Foundation

//class DataManager {
//    
//    private var database: Realm
//    static let instance = DataManager()
//    
//    private init() {
//        database = try! Realm()
//    }
//}


//
//class DBManager {
//
//    private var database: Realm
//    static let instance = DBManager()
//
//    private init() {
//        database = try! Realm()
//    }
//
//func saveUserObject(userJSONObj:[String:Any]){
//        if let userObj = User(JSON: userJSONObj) {
//            print(userObj)
//            try! database.write {
//                database.create(User.self, value: userObj, update: .modified)
//            }
//        }
//    }
//func getUserAccount() -> User? {
//        let email = SessionService.instance.activeUserEmail
//        let account = database.objects(User.self).filter("email = %@", email).first
//        return account
//    }
// DBManager.instance.saveUserObject

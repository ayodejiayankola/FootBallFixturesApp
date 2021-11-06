//
//  CacheManager.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 06/11/2021.
//

import Foundation


class CacheManager {
    static var cache = [String: Data]()
    
    static func setFixturesCache(_ key:String , _ data:Data) {
        //Store the data
      cache[key] = data
    }
    
    static func getsFixturesCache(_ key:String , _ data:Data) -> Data? {
        //Get data
        return cache[key]
    }
}

//
//  DateManager.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 06/11/2021.
//

import Foundation
class DateManager {
    public static   func isValidDate(dateString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        if let date = dateFormatter.date(from: dateString) {
            dateFormatter.dateFormat =  "MMM d, yyyy"
            let dateResult =  dateFormatter.string(from: date)
            return dateResult
        } else {
            return "Sep, 6th"
        }
    }
}

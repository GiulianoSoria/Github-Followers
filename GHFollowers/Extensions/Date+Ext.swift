//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Giuliano Soria on 6/3/20.
//  Copyright © 2020 Giuliano Soria. All rights reserved.
//

import Foundation

extension Date {
   
//    func convertToMonthYearFormat() -> String {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "MMM yyyy"
//
//        return dateFormatter.string(from: self)
//    }
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}

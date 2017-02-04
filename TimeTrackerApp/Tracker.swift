//
//  Tracker.swift
//  TimeTrackerApp
//
//  Created by Enoch Ko on 2/3/17.
//  Copyright © 2017 asu. All rights reserved.
//

import Foundation
class Tracker {
    var days:[Day]
    init(){
        days = [Day]()
    }
    func addDay(day:Day)-> Day{
        days.append(day)
        return day
    }
}

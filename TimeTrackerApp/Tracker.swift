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
    
    func calculateStudyingTotalTime() -> Int {
        return 5
    }
    
    func calculateSocializingTotalTime() -> Int {
        return 5
    }
    
    func calculateElectronicsTotalTime() -> Int {
        return 5
    }
    
    func calculateSleepingTotalTime() -> Int {
        return 5
    }
    
    func calculateStudyingAverageTime() -> Int {
        return 5
    }
    
    func calculateSocializingAverageTime() -> Int {
        return 5
    }
    
    func calculateElectronicsAverageTime() -> Int {
        return 5
    }
    
    func calculateSleepingAverageTime() -> Int {
        return 5
    }
}

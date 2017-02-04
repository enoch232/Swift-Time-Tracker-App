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
    
    func addDay(day:Day){
        days.append(day)
    }
    
    func returnDayNumber() -> Int{
        return days.count
    }
    
    func calculateStudyingTotalTime() -> Double {
        var totalStudyingTime:Double = 0
        for day in days {
            totalStudyingTime += day.studyingHours
        }
        return totalStudyingTime
    }
    
    func calculateSocializingTotalTime() -> Double {
        var totalSocializingTime:Double = 0
        for day in days {
            totalSocializingTime += day.socializingHours
        }
        return totalSocializingTime
    }
    
    func calculateElectronicsTotalTime() -> Double {
        var totalElectronicsTime:Double = 0
        for day in days {
            totalElectronicsTime += day.electronicsHours
        }
        return totalElectronicsTime
    }
    
    func calculateSleepingTotalTime() -> Double {
        var totalSleepingTime:Double = 0
        for day in days {
            totalSleepingTime += day.sleepingHours
        }
        return totalSleepingTime
    }
    
    func calculateStudyingAverageTime() -> Double {
        var totalStudyingTime:Double = 0
        for day in days {
            totalStudyingTime += day.studyingHours
        }
        return totalStudyingTime/Double(days.count)
    }
    
    func calculateSocializingAverageTime() -> Double {
        var totalSocializingTime:Double = 0
        for day in days {
            totalSocializingTime += day.socializingHours
        }
        return totalSocializingTime/Double(days.count)
    }
    
    func calculateElectronicsAverageTime() -> Double {
        var totalElectronicsTime:Double = 0
        for day in days {
            totalElectronicsTime += day.electronicsHours
        }
        return totalElectronicsTime/Double(days.count)
    }
    
    func calculateSleepingAverageTime() -> Double {
        var totalSleepingTime:Double = 0
        for day in days {
            totalSleepingTime += day.sleepingHours
        }
        return totalSleepingTime/Double(days.count)
    }
}

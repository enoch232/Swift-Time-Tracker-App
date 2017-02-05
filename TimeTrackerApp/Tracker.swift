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
        
        if days.count >= 7 {
            for index in (days.count - 7) ... (days.count-1) {
                totalStudyingTime += days[index].studyingHours
            }
        }else{
            for day in days {
                totalStudyingTime += day.studyingHours
            }
        }
        
        return totalStudyingTime
        
    
    }
    
    func calculateSocializingTotalTime() -> Double {
        var totalSocializingTime:Double = 0
        if days.count >= 7 {
            for index in (days.count - 7) ... (days.count-1) {
                totalSocializingTime += days[index].socializingHours
            }
        }else{
            for day in days {
                totalSocializingTime += day.socializingHours
            }
        }
        return totalSocializingTime
    }
    
    func calculateElectronicsTotalTime() -> Double {
        var totalElectronicsTime:Double = 0
        if days.count >= 7 {
            for index in (days.count - 7) ... (days.count-1) {
                totalElectronicsTime += days[index].electronicsHours
            }
        }else{
            for day in days {
                totalElectronicsTime += day.socializingHours
            }
        }
        return totalElectronicsTime
    }
    
    func calculateSleepingTotalTime() -> Double {
        var totalSleepingTime:Double = 0
        if days.count >= 7 {
            for index in (days.count - 7) ... (days.count-1) {
                totalSleepingTime += days[index].sleepingHours
            }
        }else{
            for day in days {
                totalSleepingTime += day.sleepingHours
            }
        }
        return totalSleepingTime
    }
    
    func calculateStudyingAverageTime() -> Double {
        var totalStudyingTime:Double = 0
        if days.count >= 7 {
            for index in (days.count - 7) ... (days.count-1) {
                totalStudyingTime += days[index].studyingHours
            }
            return totalStudyingTime/Double(7)
        }else{
            for day in days {
                totalStudyingTime += day.studyingHours
            }
            return totalStudyingTime/Double(days.count)
        }
    }
    
    func calculateSocializingAverageTime() -> Double {
        var totalSocializingTime:Double = 0
        if days.count >= 7 {
            for index in (days.count - 7) ... (days.count-1) {
                totalSocializingTime += days[index].socializingHours
            }
            return totalSocializingTime/Double(7)
        }else{
            for day in days {
                totalSocializingTime += day.socializingHours
            }
            return totalSocializingTime/Double(days.count)
        }
    }
    
    func calculateElectronicsAverageTime() -> Double {
        var totalElectronicsTime:Double = 0
        if days.count >= 7 {
            for index in (days.count - 7) ... (days.count-1) {
                totalElectronicsTime += days[index].electronicsHours
            }
            return totalElectronicsTime/Double(7)
        }else{
            for day in days {
                totalElectronicsTime += day.electronicsHours
            }
            return totalElectronicsTime/Double(days.count)
        }
    }
    
    func calculateSleepingAverageTime() -> Double {
        var totalSleepingTime:Double = 0
        if days.count >= 7 {
            for index in (days.count - 7) ... (days.count-1) {
                totalSleepingTime += days[index].sleepingHours
            }
            return totalSleepingTime/Double(7)
        }else{
            for day in days {
                totalSleepingTime += day.sleepingHours
            }
            return totalSleepingTime/Double(days.count)
        }
    }
}

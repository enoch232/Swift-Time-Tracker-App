//
//  Day.swift
//  TimeTrackerApp
//
//  Created by Enoch Ko on 2/3/17.
//  Copyright © 2017 asu. All rights reserved.
//

import Foundation
class Day {
    var studyingHours:Double
    var socializingHours:Double
    var electronicsHours:Double
    var sleepingHours:Double
    
    init(studyingHours:Double, socializingHours:Double, electronicsHours:Double, sleepingHours:Double ){
        self.studyingHours = studyingHours
        self.socializingHours = socializingHours
        self.electronicsHours = electronicsHours
        self.sleepingHours = sleepingHours
    }
    
}

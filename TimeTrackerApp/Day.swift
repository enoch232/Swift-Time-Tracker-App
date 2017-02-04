//
//  Day.swift
//  TimeTrackerApp
//
//  Created by Enoch Ko on 2/3/17.
//  Copyright © 2017 asu. All rights reserved.
//

import Foundation
class Day {
    var studyingHours:Int
    var socializingHours:Int
    var electronicsHours:Int
    var sleepingHours:Int
    
    init(studyingHours:Int, socializingHours:Int, electronicsHours:Int, sleepingHours:Int ){
        self.studyingHours = studyingHours
        self.socializingHours = socializingHours
        self.electronicsHours = electronicsHours
        self.sleepingHours = sleepingHours
    }
    
}

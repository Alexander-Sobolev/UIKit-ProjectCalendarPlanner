//
//  ScheduleModel.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 27.08.2021.
//

import RealmSwift
import UIKit

class ScheduleModel: Object {
    
    @Persisted var scheduleDate = Date()
    @Persisted var scheduleTime = Date()
    @Persisted var scheduleName: String = ""
    @Persisted var scheduleType: String = ""
    @Persisted var scheduleBuilding: String = ""
    @Persisted var scheduleAudience: String = ""
    @Persisted var scheduleTeacher: String = ""
    @Persisted var scheduleColor: String = ""
    @Persisted var scheduleRepeat: Bool = true
    @Persisted var scheduleWeekday: Int = 1
    
    
}

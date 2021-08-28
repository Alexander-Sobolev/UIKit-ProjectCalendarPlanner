//
//  RealmManager.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 27.08.2021.
//

import RealmSwift

class RealmManager {
    
    static let shared = RealmManager()
    
    private init() {}
    
    let localRealm = try! Realm()
    
    func saveScheduleModel(model: ScheduleModel) {
        try! localRealm.write {
            localRealm.add(model)
        }
    }
    
   
    
}

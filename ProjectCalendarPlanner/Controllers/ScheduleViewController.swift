//
//  ScheduleViewController.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 20.07.2021.
//

import UIKit
import FSCalendar

class ScheduleViewController: UIViewController {
    
    private var calendar: FSCalendar = {
        let calendar = FSCalendar()
        calendar.translatesAutoresizingMaskIntoConstraints = false
        return calendar
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Schedule"
        setupConstraints()
        
    }

}

// MARK: - SetupConstraints

extension ScheduleViewController {
    
    func setupConstraints() {
        view.addSubview(calendar)
        NSLayoutConstraint.activate([
            calendar.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            calendar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            calendar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            calendar.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}

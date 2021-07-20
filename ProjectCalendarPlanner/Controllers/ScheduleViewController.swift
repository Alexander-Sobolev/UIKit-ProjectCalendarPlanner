//
//  ScheduleViewController.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 20.07.2021.
//

import UIKit
import FSCalendar

class ScheduleViewController: UIViewController {
    
    var calendarHeight: NSLayoutConstraint!
    
    private var calendar: FSCalendar = {
        let calendar = FSCalendar()
        calendar.translatesAutoresizingMaskIntoConstraints = false
        return calendar
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Schedule"
        
        calendar.delegate = self
        calendar.dataSource = self
            
        setupConstraints()
        
    }

}

// MARK: - FSCalendarDataSource, FSCalendarDelegate

extension ScheduleViewController: FSCalendarDataSource, FSCalendarDelegate {
    
    
    func calendar(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) {
        calendarHeight.constant = bounds.height
        view.layoutIfNeeded()
    }
}

// MARK: - SetupConstraints

extension ScheduleViewController {
    
    
    func setupConstraints() {
        
        view.addSubview(calendar)
        
        calendarHeight = NSLayoutConstraint(item: calendar, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300)
        calendar.addConstraint(calendarHeight)
        
        NSLayoutConstraint.activate([
            calendar.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            calendar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            calendar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        ])
    }
}

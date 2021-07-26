//
//  ScheduleTableViewCell.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 26.07.2021.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
    let lessonName: UILabel = {
        let label = UILabel()
        label.text = "Программа"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

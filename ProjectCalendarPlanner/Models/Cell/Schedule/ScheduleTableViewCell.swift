//
//  ScheduleTableViewCell.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 26.07.2021.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
//    let lessonName: UILabel = {
//        let label = UILabel()
//        label.text = "Программирование"
//        label.textColor = .black
//        label.font = UIFont(name: "Avenir Next Demi Bold", size: 20)
//        label.textAlignment = .left
//        label.adjustsFontSizeToFitWidth = true
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.backgroundColor = .red
//        return label
//    }()
    
    let lessonName = UILabel(text: "Программирование", font: .avenirNextDemiBold20())
    let teacherName =  UILabel(text: "Антонов Антон Антонович", font: .avenirNext20(), alignment: .right)
    let lessonTime = UILabel(text: "08:00", font: .avenirNextDemiBold20())
    let typeLabel = UILabel(text: "Type:", font: .avenirNext14(), alignment: .right)
    let lessoType = UILabel(text: "Лекция", font: .avenirNextDemiBold14())
    let bildingLabel = UILabel(text: "Building:", font: .avenirNext14(), alignment: .right)
    let lessonBilding = UILabel(text: "1", font: .avenirNextDemiBold14())
    let audLabel = UILabel(text: "Audience:", font: .avenirNext14(), alignment: .right)
    let lessonAud = UILabel(text: "101", font: .avenirNextDemiBold14())

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.setConstraints()
        self.selectionStyle = .none
   
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func layoutSubviews() {
//        setConstraints()
//    }
    
    func setConstraints() {
        
        let topStackView = UIStackView(arrangedSubviews: [lessonName, teacherName], axis: .horizontal, spacing: 10, distribution: .fillEqually)

        self.addSubview(topStackView)
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            topStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            topStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            topStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        self.addSubview(lessonTime)
        NSLayoutConstraint.activate([
            lessonTime.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            lessonTime.widthAnchor.constraint(equalToConstant: 100),
            lessonTime.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        let bottomStackView = UIStackView(arrangedSubviews: [typeLabel, lessoType, bildingLabel, lessonBilding, audLabel, lessonAud], axis: .horizontal, spacing: 5, distribution: .fillProportionally)
        
        self.addSubview(bottomStackView)
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            bottomStackView.leadingAnchor.constraint(equalTo: self.lessonTime.trailingAnchor, constant: 5),
            bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            bottomStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
}

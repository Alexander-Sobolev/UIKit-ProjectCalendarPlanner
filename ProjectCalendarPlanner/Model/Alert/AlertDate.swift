//
//  AlertDate.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 09.08.2021.
//

import UIKit

extension UIViewController {
    
    func alertDate(label: UILabel, comHandler: (Int, Date) -> Void) {
        
        let alert = UIAlertController(title: "", message: nil, preferredStyle: .actionSheet)
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        
        alert.view.addSubview(datePicker)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            
            let dateFormater = DateFormatter()
            dateFormater.dateFormat = "dd.MM.yyyy"
            let dateString = dateFormater.string(from: datePicker.date)
            
            
            let calendar = Calendar.current
            let component = calendar.dateComponents([.weekday], from: datePicker.date)
            
        }
        
        
        
    }
}

//
//  OptionsScheduleViewController.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 28.07.2021.
//

import UIKit

class ScheduleOptionsTableViewController: UITableViewController {
    
    private let idOptions = "idOptions"
    private let idOptionsHeader = "idOptionsHeader"
    
    let headerNameArray = ["DATE AND TIME", "LESSON", "TEACHER", "COLOR", "PERIOD"]
    
    let cellNameArray = [["Date", "Time"],
                         ["Name", "Type", "Building", "Audiense"],
                         ["Teacer Name"],
                         [""],
                         ["Repeat every 7 days"]]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        tableView.separatorStyle = .none
        tableView.bounces = false
        tableView.register(OptionsTableViewCell.self, forCellReuseIdentifier: idOptions)
        tableView.register(HeaderOptionsTabelView.self, forHeaderFooterViewReuseIdentifier: idOptionsHeader)
        
        title = "Options Schedule"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveButtonTapped))
    }
    
    @objc private func saveButtonTapped() {
        print("Save")
        
        let scheduleModel = ScheduleModel()
        
        scheduleModel.scheduleDate = Date()
        
        scheduleModel.scheduleDate = Date()
        scheduleModel.scheduleTime = Date()
        scheduleModel.scheduleName = "scheduleName"
        scheduleModel.scheduleType = "scheduleType"
        scheduleModel.scheduleBuilding = "scheduleBuilding"
        scheduleModel.scheduleAudience = "scheduleAudience"
        scheduleModel.scheduleTeacher = "scheduleTeacher"
        scheduleModel.scheduleColor = "scheduleColor"
        scheduleModel.scheduleRepeat = true
        scheduleModel.scheduleWeekday = 100
        
        RealmManager.shared.saveScheduleModel(model: scheduleModel)
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 2
        case 1: return 4
        case 2: return 1
        case 3: return 1
        default:
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptions, for: indexPath) as! OptionsTableViewCell
        cell.cellSceduleConfigure(nameArray: cellNameArray, indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionsHeader) as! HeaderOptionsTabelView
        header.headerConfigure(nameArray: headerNameArray, section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let cell = tableView.cellForRow(at: indexPath) as! OptionsTableViewCell
        switch indexPath {
        case [0,0]: alertDate(label: cell.nameCellLabel) { (numberWeekday, date) in
            print(numberWeekday, date)
        }
        case [0,1]: alertTime(label: cell.nameCellLabel) { (date) in
            print(date)
        }
        case [1,0]: alertForCellName(label: cell.nameCellLabel, name: "Name lesson", placeholder: "Enter name lesson")
        case [1,1]: alertForCellName(label: cell.nameCellLabel, name:"Type lesson", placeholder: "Enter type lesson")
        case [1,2]: alertForCellName(label: cell.nameCellLabel, name: "Building number", placeholder: "Enter number of building")
        case [1,3]: alertForCellName(label: cell.nameCellLabel, name: "Audience number", placeholder: "Enter number of audience")
        case [2,0]: pushControllers(vc: TeachersViewController())
        case [3,0]: pushControllers(vc: ScheduleColorsViewController())
        default:
            print("Tap OptionsTabelView")
        }
        
        func pushControllers(vc: UIViewController) {
            let viewController = vc
            navigationController?.navigationBar.topItem?.title = "Options"
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

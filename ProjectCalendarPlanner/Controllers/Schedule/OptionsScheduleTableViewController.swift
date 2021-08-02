//
//  OptionsScheduleViewController.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 28.07.2021.
//

import UIKit

class OptionsScheduleTableViewController: UITableViewController {
    
    let idOptions = "idOptions"
    let idOptionsHeader = "idOptionsHeader"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        tableView.separatorStyle = .none
        tableView.register(OptionsScheduleTableViewCell.self, forCellReuseIdentifier: idOptions)
        tableView.register(HeaderOptionScheduleTabelView.self, forHeaderFooterViewReuseIdentifier: idOptionsHeader)
        
        title = "Option Schedule"
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptions, for: indexPath) as! OptionsScheduleTableViewCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionsHeader) as! HeaderOptionScheduleTabelView
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}

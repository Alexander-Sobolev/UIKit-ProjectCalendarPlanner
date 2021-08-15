//
//  ColorTaskTableViewController.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 15.08.2021.
//

import UIKit

class ColorTaskTableViewController: UITableViewController {
    
    let idTaskOptionsColor = "idTaskOptionsColor"
    let idTaskOptionsHeader = "idTaskOptionsHeader"
    
    let headerNameArray = ["RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "DEEP BLUE", "PURPLE"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        tableView.separatorStyle = .none
        tableView.bounces = false
        tableView.register(ColorTabelViewCell.self, forCellReuseIdentifier: idTaskOptionsColor)
        tableView.register(HeaderOptionsTabelView.self, forHeaderFooterViewReuseIdentifier: idTaskOptionsHeader)
        
        title = "Color Tasks"
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idTaskOptionsColor, for: indexPath) as! ColorTabelViewCell
        cell.cellConfigure(indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idTaskOptionsHeader) as! HeaderOptionsTabelView
        header.headerConfigure(nameArray: headerNameArray, section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
       print("TAP")
    }
}

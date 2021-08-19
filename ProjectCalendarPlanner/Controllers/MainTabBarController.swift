//
//  ViewController.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 20.07.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        
    }
    
    func setupTabBar() {
        
        let scheduleViewController = createNavController(vc: ScheduleViewController(), itemName: "Schedule", itemImage: "calendar.badge.clock")
        let tasksViewController = createNavController(vc: TasksViewController(), itemName: "Tasks", itemImage: "text.badge.checkmark")
        let contactsViewController = createNavController(vc: ContactsTableViewController(), itemName: "Contacts", itemImage: "rectangle.stack.person.crop")
        
        viewControllers = [scheduleViewController, tasksViewController, contactsViewController]
    }
    
    func createNavController(vc: UIViewController, itemName: String, itemImage: String ) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        return navController
        
    }

}


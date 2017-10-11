//
//  TabBarController.swift
//  Khanomanee
//
//  Created by Mostafa Oraei on 7/16/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeViewController = HomeViewController()
        let homeNavController = UINavigationController(rootViewController: homeViewController)
        homeNavController.tabBarItem.title = "Home"
        
        let categoryViewController = CategoryViewController()
        let categoryNavController = UINavigationController(rootViewController: categoryViewController)
        categoryNavController.tabBarItem.title = "Category"
        
        let searchViewController = SearchViewController()
        let searchNavController = UINavigationController(rootViewController: searchViewController)
        searchNavController.tabBarItem.title = "Search"
        
        let zanRozViewController = ZanRozViewController()
        let zanRozNavController = UINavigationController(rootViewController: zanRozViewController)
        zanRozNavController.tabBarItem.title = "ZanRoz"
        
        
        viewControllers = [homeNavController, categoryNavController, searchNavController, zanRozNavController]
    }
    
    
}

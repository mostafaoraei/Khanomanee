//
//  ViewController.swift
//  Khanomanee
//
//  Created by Mostafa Oraei on 7/16/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {

    let reusedable = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "HOME"
        
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: reusedable)
        // Remove empty cell of TableView
        tableView.tableFooterView = UIView()
        // Set right to left cells of tableView
//        tableView.semanticContentAttribute = .forceRightToLeft
    }
    
    // TableViewDataSource methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
//    let models: [Model] = [Model(name: "sadasd") , Model(name: "") , Model(name)]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reusedable, for: indexPath) as! HomeTableViewCell
//        cell.model = models[indexPath.row]
        cell.itemLabel.text = "مثطفا اورعی آهنگر"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    // TableViewDelegate method
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

    
}



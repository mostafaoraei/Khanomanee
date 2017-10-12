//
//  CategoryViewController.swift
//  Khanomanee
//
//  Created by Mostafa Oraei on 7/16/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let reuseIdentifier = "categoryCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Category"
        categoryTableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        setupView()
        
    }
    
    let categoryTableView: UITableView = {
        
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
        
    }()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = categoryTableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        return cell
        
    }
    
    func setupView() {
        
        self.view.addSubview(categoryTableView)
        
        self.categoryTableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.categoryTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.categoryTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.categoryTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true

    }
}


//
//  SearchViewController.swift
//  Khanomanee
//
//  Created by Mostafa Oraei on 7/16/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource {
    
    let reusedable = "searchCell"
    let reusedableHeader = "headerCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationItem.title = "search"
        searchBar.delegate = self
        trendsTableView.delegate = self
        trendsTableView.dataSource = self
        trendsTableView.register(SearchTableViewCell.self, forCellReuseIdentifier: reusedable)
        trendsTableView.tableFooterView = UIView()
        setupView()

        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        // Hide the navigation bar on the this view controller
//        self.navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//
//        // Show the navigation bar on other view controllers
//        self.navigationController?.setNavigationBarHidden(false, animated: animated)
//
//    }
    let trendsTableView: UITableView = {
        
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    let searchBar: UISearchBar = {
        
        let search = UISearchBar()
        search.placeholder = "متن دلخواهتون رو جستجو کنید!"
        search.translatesAutoresizingMaskIntoConstraints = false
        search.isTranslucent = true
        search.barStyle = .black
        search.contentMode = .right
        search.searchBarStyle = .minimal
        search.tintColor = UIColor.darkGray
        search.heightAnchor.constraint(equalToConstant: 40).isActive = true
        search.semanticContentAttribute = .forceRightToLeft
        search.showsCancelButton = false
        
        return search
    }()
    
    
        
    
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        self.navigationController?.navigationBar.isHidden = true
        var r = self.view.frame
        r.origin.y = -40
        r.size.height += 40
        
        self.view.frame = r
        searchBar.setShowsCancelButton(true, animated: true)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(false, animated: true)
        self.hideKeyboardWhenTappedAround()

        var r = self.view.frame
        r.origin.y = +0
        r.size.height += 40
        
        self.view.frame = r
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
//        self.hideKeyboardWhenTappedAround()
    }
    
    
    // TableViewDataSource methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    //    let models: [Model] = [Model(name: "sadasd") , Model(name: "") , Model(name)]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: reusedable, for: indexPath) as! SearchTableViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    // TableViewDelegate method
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView: UIView = {
            let view = UIView()
            view.heightAnchor.constraint(equalToConstant: 30)
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        let header: UILabel = {
            let label = UILabel()
            label.text = "Trending"
            label.font = UIFont.boldSystemFont(ofSize: 33)
            label.heightAnchor.constraint(equalToConstant: -10)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        headerView.addSubview(header)
        self.view.addSubview(headerView)
        
        headerView.heightAnchor.constraint(equalToConstant: 50)
        
        return headerView
    }
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let cell = tableView.dequeueReusableHeaderFooterView(withIdentifier: reusedableHeader) as! SearchTableViewCell
//        cell.headerLabel.text = "جستجو"
//        return cell
//    }
    
    func setupView(){

        self.view.addSubview(searchBar)
        self.view.addSubview(trendsTableView)
        self.trendsTableView.tableFooterView = UIView()
        //add constraint searchbar
        self.searchBar.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 65).isActive = true
        self.searchBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.searchBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true

        //add constraint tableView
        self.trendsTableView.topAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        self.trendsTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.trendsTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.trendsTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 20).isActive = true
        
    }
    
}

// Put this piece of code anywhere you like
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        self.navigationController?.navigationBar.isHidden = false
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

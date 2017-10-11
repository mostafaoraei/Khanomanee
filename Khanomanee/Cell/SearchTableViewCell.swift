//
//  SearchTableViewCell.swift
//  Khanomanee
//
//  Created by Mostafa Oraei on 7/18/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    let reusedable = "searchCell"
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reusedable)

        self.semanticContentAttribute = .forceRightToLeft
        setupView()
        
    }
    
    let headerLabel: UILabel = {
        
        let label = UILabel()
        label.heightAnchor.constraint(equalToConstant: 44).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.semanticContentAttribute = .forceRightToLeft
        label.heightAnchor.constraint(equalToConstant: 90).isActive = true
        label.font = UIFont.boldSystemFont(ofSize: 44)
        return label
        
    }()
    
    func setupView() {
        
        addSubview(headerLabel)
        
        // set constraint for headerLabel
        self.headerLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.headerLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

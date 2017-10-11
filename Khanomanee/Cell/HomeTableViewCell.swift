//
//  HomeCollectionViewCell.swift
//  Khanomanee
//
//  Created by Mostafa Oraei on 7/16/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
//    var model: Model {
//        didSet {
//            self.imageView.image = UIImage(model.imageName)
//            self.itemLabel.text = model.name
//        }
//    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "cellId")
        
        setupView()
//        self.semanticContentAttribute = .forceRightToLeft
    }
    
    // itemLabel
    let itemLabel: UILabel = {
        
        let label = UILabel()
        label.backgroundColor = UIColor.brown
        label.heightAnchor.constraint(equalToConstant: 44).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.semanticContentAttribute = .forceRightToLeft
        return label
        
    }()
    
    // iconImageView
    let iconImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.yellow
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 22
        imageView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 44).isActive = true
        imageView.layer.masksToBounds = true
        return imageView
        
    }()
    
    func setupView(){
        
        // set view
        
        addSubview(itemLabel)
        addSubview(iconImageView)
        
        // MARK: constraints
        // iconImage constraints
        
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0(44)]-8-[v1]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : iconImageView, "v1" : itemLabel]))
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(44)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : iconImageView]))
//
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(44)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : itemLabel]))
//        addConstraint(NSLayoutConstraint(item: itemLabel, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: 16))
//        addConstraint(NSLayoutConstraint(item: itemLabel, attribute: .left, relatedBy: .equal, toItem: iconImageView, attribute: .right, multiplier: 1, constant: -8))
        
        
        self.iconImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        self.iconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        self.itemLabel.trailingAnchor.constraint(equalTo: self.iconImageView.leadingAnchor, constant: -8).isActive = true
        self.itemLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.itemLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor , constant: 22).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

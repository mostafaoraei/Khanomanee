//
//  ZanRozCollectionViewCell.swift
//  Khanomanee
//
//  Created by Mostafa Oraei on 7/19/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import UIKit

class ZanRozCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        
    }
    

    
    // CollectionViewFlow
    let zanRozImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.yellow
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        return imageView
        
    }()
    
    func setupView(){
        
        // set view
        
        addSubview(zanRozImageView)
        
        self.zanRozImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.zanRozImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.zanRozImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.zanRozImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

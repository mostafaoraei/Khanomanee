//
//  ZanRozViewController.swift
//  Khanomanee
//
//  Created by Mostafa Oraei on 7/16/1396 AP.
//  Copyright © 1396 Mostafa Oraei. All rights reserved.
//

import UIKit

class ZanRozViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    let leftAndRightPaddings: CGFloat = 40.0
    let numberOfItemsPerRow: CGFloat = 2.0
    let screenSize: CGRect = UIScreen.main.bounds
    let flowLayout = UICollectionViewFlowLayout()
    let cellReuseIdentifier = "collectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // increase space between rows of collectionView
        flowLayout.minimumLineSpacing = 50

        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)
        collectionView.register(ZanRozCollectionViewCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.view.addSubview(collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath as IndexPath) as! ZanRozCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
        // create diffrent size of cells
        if indexPath.row % 3 == 2 {
            let width = (screenSize.width-leftAndRightPaddings)
            let size = CGSize(width: width, height: width)
            return size
        } else {
            let width = (screenSize.width-leftAndRightPaddings)/numberOfItemsPerRow
            let size = CGSize(width: width, height: width)
            return size
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        
        // insets for collectionView
        return UIEdgeInsets(top: 220, left: 8, bottom: 55, right: 8)
        
    }

}


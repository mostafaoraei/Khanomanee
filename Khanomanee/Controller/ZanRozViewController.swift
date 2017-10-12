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
    private let cellReuseIdentifier = "collectionCell"
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 50

        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)
        collectionView.register(ZanRozCollectionViewCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)
        
//        collectionView.registerClass(ZanRozCollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.view.addSubview(collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return self.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath as IndexPath) as! ZanRozCollectionViewCell
        cell.backgroundColor = UIColor.green
        cell.layer.cornerRadius = 33
        cell.layer.masksToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
        // create loop for diffrent size of cells
        
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
        return UIEdgeInsets(top: 220, left: 8, bottom: 55, right: 8)
    }

}


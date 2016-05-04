//
//  CustomCollectionViewController.swift
//  CollectionViewSample
//
//  Created by HayashidaKazumi on 2016/05/04.
//  Copyright © 2016年 HayashidaKazumi. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController {
  
  override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return 4
  }
  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  
  override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
    cell.backgroundColor = .redColor()
    return cell
  }
}

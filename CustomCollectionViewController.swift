//
//  CustomCollectionViewController.swift
//  CollectionViewSample
//
//  Created by HayashidaKazumi on 2016/05/04.
//  Copyright © 2016年 HayashidaKazumi. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView?.delegate = self
    collectionView?.collectionViewLayout
  }
  
  
  override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return 1
  }
  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  
  override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
    return cell
  }
}

extension CustomCollectionViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    let size = CGSize(width: view.frame.width, height: 100.0)
    return size
  }
}
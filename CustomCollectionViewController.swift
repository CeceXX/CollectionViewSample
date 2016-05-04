//
//  CustomCollectionViewController.swift
//  CollectionViewSample
//
//  Created by HayashidaKazumi on 2016/05/04.
//  Copyright © 2016年 HayashidaKazumi. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
  override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView?.delegate = self
    collectionView?.collectionViewLayout
  }
  
  
  override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return 4
  }
  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  
  override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
    return cell
  }
  
  override func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
    let size = CGSize(width: view.frame.width, height: 44.0)
    return size
  }
  
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    let size = CGSize(width: view.frame.width, height: 44.0)
    return size
  }
}


//extension CustomCollectionViewController: UICollectionViewDelegateFlowLayout {
//  
//  override func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
//    let size = CGSize(width: view.frame.width, height: 44.0)
//    return size
//  }
//}
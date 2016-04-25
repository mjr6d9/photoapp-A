//
//  StoryBoardViewController.swift
//  PhotoApp
//
//  Created by Brock A Young on 4/23/16.
//  Copyright © 2016 Brock A Young. All rights reserved.
//

import UIKit

class StoryBoardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    let numImages = 8//make sure to add an extra for some reason until you figure out how to move them back a space
    let numSections = 1
    var imageList = [String]()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0...(numImages-1) {
            imageList.append("Photo\(index).jpeg")
        }
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return numSections
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numImages
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("storyCell", forIndexPath: indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        
        imageView.image = UIImage(named: imageList[indexPath.item])
        
        return cell
    }
    

}

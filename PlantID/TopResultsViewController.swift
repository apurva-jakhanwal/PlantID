//
//  TopResultsViewController.swift
//  PlantID
//
//  Created by Apurva Jakhanwal on 5/31/18.
//  Copyright © 2018 UCI-Nature. All rights reserved.
//

import UIKit

class TopResultsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameLabel5: UILabel!
    @IBOutlet weak var nameLabel4: UILabel!
    @IBOutlet weak var nameLabel3: UILabel!
    @IBOutlet weak var nameLabel2: UILabel!
    
    @IBOutlet weak var collection1: UICollectionView!
    @IBOutlet weak var collection2: UICollectionView!
    @IBOutlet weak var collection3: UICollectionView!
    @IBOutlet weak var collection4: UICollectionView!
    @IBOutlet weak var collection5: UICollectionView!
    
    @IBOutlet weak var scroll: UIScrollView!
    
    var imageArray = [UIImage(named:  "\(finalplants.codes[0])" + "_Plant"), UIImage(named:  "\(finalplants.codes[0])" + "_Leaf"), UIImage(named:  "\(finalplants.codes[0])" + "_Flower"), UIImage(named:  "\(finalplants.codes[0])" + "_Cot"), UIImage(named:  "\(finalplants.codes[0])" + "_Seedling"),]
    
    var imageArray2 = [UIImage(named:  "\(finalplants.codes[1])" + "_Plant"), UIImage(named:  "\(finalplants.codes[1])" + "_Leaf"), UIImage(named:  "\(finalplants.codes[1])" + "_Flower"), UIImage(named:  "\(finalplants.codes[1])" + "_Cot"), UIImage(named:  "\(finalplants.codes[1])" + "_Seedling"),]
    
    var imageArray3 = [UIImage(named:  "\(finalplants.codes[2])" + "_Plant"), UIImage(named:  "\(finalplants.codes[2])" + "_Leaf"), UIImage(named:  "\(finalplants.codes[2])" + "_Flower"), UIImage(named:  "\(finalplants.codes[2])" + "_Cot"), UIImage(named:  "\(finalplants.codes[2])" + "_Seedling"),]
    
    var imageArray4 = [UIImage(named:  "\(finalplants.codes[3])" + "_Plant"), UIImage(named:  "\(finalplants.codes[3])" + "_Leaf"), UIImage(named:  "\(finalplants.codes[3])" + "_Flower"), UIImage(named:  "\(finalplants.codes[3])" + "_Cot"), UIImage(named:  "\(finalplants.codes[3])" + "_Seedling"),]
    
    var imageArray5 = [UIImage(named:  "\(finalplants.codes[4])" + "_Plant"), UIImage(named:  "\(finalplants.codes[4])" + "_Leaf"), UIImage(named:  "\(finalplants.codes[4])" + "_Flower"), UIImage(named:  "\(finalplants.codes[4])" + "_Cot"), UIImage(named:  "\(finalplants.codes[4])" + "_Seedling"),]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == self.collection1){
            return imageArray.count
        }
        else if(collectionView == self.collection2) {
            return imageArray2.count
        }
        else if(collectionView == self.collection3) {
            return imageArray3.count
        }
        else if(collectionView == self.collection4) {
            return imageArray4.count
        }
        else{
            return imageArray5.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == self.collection1){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
            cell.imgImage.image = imageArray[indexPath.row]
            return cell
        }
        else if(collectionView == self.collection2){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
            cell.imgImage2.image = imageArray2[indexPath.row]
            return cell

        }
        else if(collectionView == self.collection3){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
            cell.imgImage3.image = imageArray3[indexPath.row]
            return cell
            
        }
        else if(collectionView == self.collection4){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
            cell.imgImage4.image = imageArray4[indexPath.row]
            return cell
            
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
            cell.imgImage5.image = imageArray5[indexPath.row]
            return cell
            
        }
    }
    
    
    @IBAction func onClickPrev(_ sender: Any) {
        finalplants.names = []
        finalplants.codes = []
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        scroll.contentSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height+2030)
        
        nameLabel.text = finalplants.names[0]
        nameLabel2.text = finalplants.names[1]
        nameLabel3.text = finalplants.names[2]
        nameLabel4.text = finalplants.names[3]
        nameLabel5.text = finalplants.names[4]
        
        collection1.flashScrollIndicators()
        collection2.flashScrollIndicators()
        collection3.flashScrollIndicators()
        collection4.flashScrollIndicators()
        collection5.flashScrollIndicators()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

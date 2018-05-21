//
//  PlantGroupViewController.swift
//  PlantID
//
//  Created by Apurva Jakhanwal on 4/30/18.
//  Copyright © 2018 UCI-Nature. All rights reserved.
//

import UIKit

class PlantGroupViewController: UIViewController {

    @IBOutlet var tree: UISwitch!
    @IBOutlet var grass: UISwitch!
    @IBOutlet var shrub: UISwitch!
    @IBOutlet var forb: UISwitch!
    @IBOutlet var succulent: UISwitch!
    @IBOutlet var next_leafShape: UIButton!
    @IBOutlet var scroll: UIScrollView!
    
    @IBAction func tree_selected(tree: UISwitch) {
        if (tree.isOn == true){
            plantinfo.group.insert("tree")
            print(plantinfo.group)
            next_leafShape.isEnabled = true
        }
        else{
            if (plantinfo.group.contains("tree")){
                plantinfo.group.remove("tree")
                if plantinfo.group.count == 0{
                    next_leafShape.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func grass_selected(grass: UISwitch) {
        if (grass.isOn == true){
            plantinfo.group.insert("grass")
            print(plantinfo.group)
            next_leafShape.isEnabled = true
        }
        else{
            if (plantinfo.group.contains("grass")){
                plantinfo.group.remove("grass")
                if plantinfo.group.count == 0{
                    next_leafShape.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func shrub_selected(shrub: UISwitch) {
        if (shrub.isOn == true){
            plantinfo.group.insert("shrub")
            print(plantinfo.group)
            next_leafShape.isEnabled = true
        }
        else{
            if (plantinfo.group.contains("shrub")){
                plantinfo.group.remove("shrub")
                if plantinfo.group.count == 0{
                    next_leafShape.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func forb_selected(forb: UISwitch) {
        if (forb.isOn == true){
            plantinfo.group.insert("forb")
            print(plantinfo.group)
            next_leafShape.isEnabled = true
        }
        else{
            if (plantinfo.group.contains("forb")){
                plantinfo.group.remove("forb")
                if plantinfo.group.count == 0{
                    next_leafShape.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func succulent_selected(succulent: UISwitch) {
        if (succulent.isOn == true){
            plantinfo.group.insert("succulent")
            print(plantinfo.group)
            next_leafShape.isEnabled = true
        }
        else{
            if (plantinfo.group.contains("succulent")){
                plantinfo.group.remove("succulent")
                if plantinfo.group.count == 0{
                    next_leafShape.isEnabled = false
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scroll.contentSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height+1020)

        print("Plant Group Controller")
        tree.addTarget(self, action: #selector(PlantGroupViewController.tree_selected(tree:)), for: UIControlEvents.valueChanged)
        grass.addTarget(self, action: #selector(PlantGroupViewController.grass_selected(grass:)), for: UIControlEvents.valueChanged)
        shrub.addTarget(self, action: #selector(PlantGroupViewController.shrub_selected(shrub:)), for: UIControlEvents.valueChanged)
        forb.addTarget(self, action: #selector(PlantGroupViewController.forb_selected(forb:)), for: UIControlEvents.valueChanged)
        succulent.addTarget(self, action: #selector(PlantGroupViewController.succulent_selected(succulent:)), for: UIControlEvents.valueChanged)
        if plantinfo.group.count == 0{
            next_leafShape.isEnabled = false
        }
        if plantinfo.group.contains("tree"){
            tree.setOn(!tree.isOn, animated: true)
        }
        if plantinfo.group.contains("grass"){
            grass.setOn(!grass.isOn, animated: true)
        }
        if plantinfo.group.contains("shrub"){
            shrub.setOn(!shrub.isOn, animated: true)
        }
        if plantinfo.group.contains("forb"){
            forb.setOn(!forb.isOn, animated: true)
        }
        if plantinfo.group.contains("succulent"){
            succulent.setOn(!succulent.isOn, animated: true)
        }
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

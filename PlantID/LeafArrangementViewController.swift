//
//  LeafArrangementViewController.swift
//  PlantID
//
//  Created by Apurva Jakhanwal on 4/30/18.
//  Copyright © 2018 UCI-Nature. All rights reserved.
//

import UIKit

class LeafArrangementViewController: UIViewController {

    @IBOutlet var alternate: UISwitch!
    @IBOutlet var opposite: UISwitch!
    @IBOutlet var bundled: UISwitch!
    @IBOutlet var whorled: UISwitch!
    @IBOutlet var basil: UISwitch!
    @IBOutlet var rosette: UISwitch!
    @IBOutlet var next_growth: UIButton!
    @IBOutlet var scroll: UIScrollView!
    
    @IBAction func alternate_selected(alternate: UISwitch){
        if(alternate.isOn == true){
            plantinfo.arrangement.insert("alternate")
            print(plantinfo.arrangement)
            next_growth.isEnabled = true
        }
        else{
            if(plantinfo.arrangement.contains("alternate")){
                plantinfo.arrangement.remove("alternate")
                if plantinfo.arrangement.count == 0{
                    next_growth.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func opposite_selected(opposite: UISwitch){
        if(opposite.isOn == true){
            plantinfo.arrangement.insert("opposite")
            print(plantinfo.arrangement)
            next_growth.isEnabled = true
        }
        else{
            if(plantinfo.arrangement.contains("opposite")){
                plantinfo.arrangement.remove("opposite")
                if plantinfo.arrangement.count == 0{
                    next_growth.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func bundled_selected(bundled: UISwitch){
        if(bundled.isOn == true){
            plantinfo.arrangement.insert("bundled")
            print(plantinfo.arrangement)
            next_growth.isEnabled = true
        }
        else{
            if(plantinfo.arrangement.contains("bundled")){
                plantinfo.arrangement.remove("bundled")
                if plantinfo.arrangement.count == 0{
                    next_growth.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func whorled_selected(whorled: UISwitch){
        if(whorled.isOn == true){
            plantinfo.arrangement.insert("whorled")
            print(plantinfo.arrangement)
            next_growth.isEnabled = true
        }
        else{
            if(plantinfo.arrangement.contains("whorled")){
                plantinfo.arrangement.remove("whorled")
                if plantinfo.arrangement.count == 0{
                    next_growth.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func basil_selected(basil: UISwitch){
        if(basil.isOn == true){
            plantinfo.arrangement.insert("basil")
            print(plantinfo.arrangement)
            next_growth.isEnabled = true
        }
        else{
            if(plantinfo.arrangement.contains("basil")){
                plantinfo.arrangement.remove("basil")
                if plantinfo.arrangement.count == 0{
                    next_growth.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func rosette_selected(rosette: UISwitch){
        if(rosette.isOn == true){
            plantinfo.arrangement.insert("rosette")
            print(plantinfo.arrangement)
            next_growth.isEnabled = true
        }
        else{
            if(plantinfo.arrangement.contains("rosette")){
                plantinfo.arrangement.remove("rosette")
                if plantinfo.arrangement.count == 0{
                    next_growth.isEnabled = false
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         scroll.contentSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height+1400)

        // Do any additional setup after loading the view.
        alternate.addTarget(self, action: #selector(LeafArrangementViewController.alternate_selected(alternate:)), for: UIControlEvents.valueChanged)
        opposite.addTarget(self, action: #selector(LeafArrangementViewController.opposite_selected(opposite:)), for: UIControlEvents.valueChanged)
        bundled.addTarget(self, action: #selector(LeafArrangementViewController.bundled_selected(bundled:)), for: UIControlEvents.valueChanged)
        whorled.addTarget(self, action: #selector(LeafArrangementViewController.whorled_selected(whorled:)), for: UIControlEvents.valueChanged)
        basil.addTarget(self, action: #selector(LeafArrangementViewController.basil_selected(basil:)), for: UIControlEvents.valueChanged)
        rosette.addTarget(self, action: #selector(LeafArrangementViewController.rosette_selected(rosette:)), for: UIControlEvents.valueChanged)
        if plantinfo.arrangement.count == 0{
            next_growth.isEnabled = false
        }
        if plantinfo.arrangement.contains("alternate"){
            alternate.setOn(!alternate.isOn, animated: true)
        }
        if plantinfo.arrangement.contains("opposite"){
            opposite.setOn(!opposite.isOn, animated: true)
        }
        if plantinfo.arrangement.contains("bundled"){
            bundled.setOn(!bundled.isOn, animated: true)
        }
        if plantinfo.arrangement.contains("whorled"){
            whorled.setOn(!whorled.isOn, animated: true)
        }
        if plantinfo.arrangement.contains("basil"){
            basil.setOn(!basil.isOn, animated: true)
        }
        if plantinfo.arrangement.contains("rosette"){
            rosette.setOn(!rosette.isOn, animated: true)
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

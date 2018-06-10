//
//  LeafShapeViewController.swift
//  PlantID
//
//  Created by Apurva Jakhanwal on 4/30/18.
//  Copyright © 2018 UCI-Nature. All rights reserved.
//

import UIKit

class LeafShapeViewController: UIViewController {

    @IBOutlet var simple: UISwitch!
    @IBOutlet var lobed: UISwitch!
    @IBOutlet var pinnate: UISwitch!
    @IBOutlet var divided: UISwitch!
    @IBOutlet var blade: UISwitch!
    @IBOutlet var next_leafarrange: UIButton!
    @IBOutlet var scroll: UIScrollView!
    
    @IBAction func simple_selected(simple: UISwitch){
        if(simple.isOn == true){
            plantinfo.shape.insert("simple")
            print(plantinfo.shape)
            next_leafarrange.isEnabled = true
        }
        else{
            if(plantinfo.shape.contains("simple")){
                plantinfo.shape.remove("simple")
                if plantinfo.shape.count == 0{
                    next_leafarrange.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func lobed_selected(lobed: UISwitch){
        if(lobed.isOn == true){
            plantinfo.shape.insert("lobed")
            print(plantinfo.shape)
            next_leafarrange.isEnabled = true
        }
        else{
            if(plantinfo.shape.contains("lobed")){
                plantinfo.shape.remove("lobed")
                if plantinfo.shape.count == 0{
                    next_leafarrange.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func pinnate_selected(pinnate: UISwitch){
        if(pinnate.isOn == true){
            plantinfo.shape.insert("pinnate")
            print(plantinfo.shape)
            next_leafarrange.isEnabled = true
        }
        else{
            if(plantinfo.shape.contains("pinnate")){
                plantinfo.shape.remove("pinnate")
                if plantinfo.shape.count == 0{
                    next_leafarrange.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func divided_selected(divided: UISwitch){
        if(divided.isOn == true){
            plantinfo.shape.insert("divided")
            print(plantinfo.shape)
            next_leafarrange.isEnabled = true
        }
        else{
            if(plantinfo.shape.contains("divided")){
                plantinfo.shape.remove("divided")
                if plantinfo.shape.count == 0{
                    next_leafarrange.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func blade_selected(blade: UISwitch){
        if(blade.isOn == true){
            plantinfo.shape.insert("blade")
            print(plantinfo.shape)
            next_leafarrange.isEnabled = true
        }
        else{
            if(plantinfo.shape.contains("blade")){
                plantinfo.shape.remove("blade")
                if plantinfo.shape.count == 0{
                    next_leafarrange.isEnabled = false
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scroll.contentSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height+1020)

        simple.addTarget(self, action: #selector(LeafShapeViewController.simple_selected(simple:)), for: UIControlEvents.valueChanged)
        pinnate.addTarget(self, action: #selector(LeafShapeViewController.pinnate_selected(pinnate:)), for: UIControlEvents.valueChanged)
        lobed.addTarget(self, action: #selector(LeafShapeViewController.lobed_selected(lobed:)), for: UIControlEvents.valueChanged)
        divided.addTarget(self, action: #selector(LeafShapeViewController.divided_selected(divided:)), for: UIControlEvents.valueChanged)
        blade.addTarget(self, action: #selector(LeafShapeViewController.blade_selected(blade:)), for: UIControlEvents.valueChanged)
        if plantinfo.shape.count == 0{
            next_leafarrange.isEnabled = false
        }
        if plantinfo.shape.contains("simple"){
            simple.setOn(!simple.isOn, animated: true)
        }
        if plantinfo.shape.contains("pinnate"){
            pinnate.setOn(!pinnate.isOn, animated: true)
        }
        if plantinfo.shape.contains("lobed"){
            lobed.setOn(!lobed.isOn, animated: true)
        }
        if plantinfo.shape.contains("divided"){
            divided.setOn(!divided.isOn, animated: true)
        }
        if plantinfo.shape.contains("blade"){
            blade.setOn(!blade.isOn, animated: true)
        }
        
    }

}

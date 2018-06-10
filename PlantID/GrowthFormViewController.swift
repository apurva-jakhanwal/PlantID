//
//  GrowthFormViewController.swift
//  PlantID
//
//  Created by Apurva Jakhanwal on 4/30/18.
//  Copyright © 2018 UCI-Nature. All rights reserved.
//

import UIKit

class GrowthFormViewController: UIViewController {

    @IBOutlet var prostate: UISwitch!
    @IBOutlet var decumbent: UISwitch!
    @IBOutlet var ascending: UISwitch!
    @IBOutlet var erect: UISwitch!
    @IBOutlet var mat: UISwitch!
    @IBOutlet var clump: UISwitch!
    @IBOutlet var rosette: UISwitch!
    @IBOutlet var basil: UISwitch!
    @IBOutlet var vine: UISwitch!
    @IBOutlet var next_flower: UIButton!
    @IBOutlet var scroll: UIScrollView!
    
    @IBAction func prostate_selected(prostate: UISwitch){
        if(prostate.isOn == true){
            plantinfo.growth_form.insert("prostate")
            print(plantinfo.growth_form)
            next_flower.isEnabled = true
        }
        else{
            if(plantinfo.growth_form.contains("prostate")){
                plantinfo.growth_form.remove("prostate")
                if plantinfo.growth_form.count == 0{
                    next_flower.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func decumbent_selected(decumbent: UISwitch){
        if(decumbent.isOn == true){
            plantinfo.growth_form.insert("decumbent")
            print(plantinfo.growth_form)
            next_flower.isEnabled = true
        }
        else{
            if(plantinfo.growth_form.contains("decumbent")){
                plantinfo.growth_form.remove("decumbent")
                if plantinfo.growth_form.count == 0{
                    next_flower.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func ascending_selected(ascending: UISwitch){
        if(ascending.isOn == true){
            plantinfo.growth_form.insert("ascending")
            print(plantinfo.growth_form)
            next_flower.isEnabled = true
        }
        else{
            if(plantinfo.growth_form.contains("ascending")){
                plantinfo.growth_form.remove("ascending")
                if plantinfo.growth_form.count == 0{
                    next_flower.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func erect_selected(erect: UISwitch){
        if(erect.isOn == true){
            plantinfo.growth_form.insert("erect")
            print(plantinfo.growth_form)
            next_flower.isEnabled = true
        }
        else{
            if(plantinfo.growth_form.contains("erect")){
                plantinfo.growth_form.remove("erect")
                if plantinfo.growth_form.count == 0{
                    next_flower.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func mat_selected(mat: UISwitch){
        if(mat.isOn == true){
            plantinfo.growth_form.insert("mat")
            print(plantinfo.growth_form)
            next_flower.isEnabled = true
        }
        else{
            if(plantinfo.growth_form.contains("mat")){
                plantinfo.growth_form.remove("mat")
                if plantinfo.growth_form.count == 0{
                    next_flower.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func clump_selected(clump: UISwitch){
        if(clump.isOn == true){
            plantinfo.growth_form.insert("clump")
            print(plantinfo.growth_form)
            next_flower.isEnabled = true
        }
        else{
            if(plantinfo.growth_form.contains("clump")){
                plantinfo.growth_form.remove("clump")
                if plantinfo.growth_form.count == 0{
                    next_flower.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func rosette_selected(rosette: UISwitch){
        if(rosette.isOn == true){
            plantinfo.growth_form.insert("rosette")
            print(plantinfo.growth_form)
            next_flower.isEnabled = true
        }
        else{
            if(plantinfo.growth_form.contains("rosette")){
                plantinfo.growth_form.remove("rosette")
                if plantinfo.growth_form.count == 0{
                    next_flower.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func basil_selected(basil: UISwitch){
        if(basil.isOn == true){
            plantinfo.growth_form.insert("basil")
            print(plantinfo.growth_form)
            next_flower.isEnabled = true
        }
        else{
            if(plantinfo.growth_form.contains("basil")){
                plantinfo.growth_form.remove("basil")
                if plantinfo.growth_form.count == 0{
                    next_flower.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func vine_selected(vine: UISwitch){
        if(vine.isOn == true){
            plantinfo.growth_form.insert("vine")
            print(plantinfo.growth_form)
            next_flower.isEnabled = true
        }
        else{
            if(plantinfo.growth_form.contains("vine")){
                plantinfo.growth_form.remove("vine")
                if plantinfo.growth_form.count == 0{
                    next_flower.isEnabled = false
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scroll.contentSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height+2500)
        
        prostate.addTarget(self, action: #selector(GrowthFormViewController.prostate_selected(prostate:)), for: UIControlEvents.valueChanged)
        decumbent.addTarget(self, action: #selector(GrowthFormViewController.decumbent_selected(decumbent:)), for: UIControlEvents.valueChanged)
        ascending.addTarget(self, action: #selector(GrowthFormViewController.ascending_selected(ascending:)), for: UIControlEvents.valueChanged)
        erect.addTarget(self, action: #selector(GrowthFormViewController.erect_selected(erect:)), for: UIControlEvents.valueChanged)
        mat.addTarget(self, action: #selector(GrowthFormViewController.mat_selected(mat:)), for: UIControlEvents.valueChanged)
        clump.addTarget(self, action: #selector(GrowthFormViewController.clump_selected(clump:)), for: UIControlEvents.valueChanged)
        rosette.addTarget(self, action: #selector(GrowthFormViewController.rosette_selected(rosette:)), for: UIControlEvents.valueChanged)
        basil.addTarget(self, action: #selector(GrowthFormViewController.basil_selected(basil:)), for: UIControlEvents.valueChanged)
        vine.addTarget(self, action: #selector(GrowthFormViewController.vine_selected(vine:)), for: UIControlEvents.valueChanged)
        if plantinfo.growth_form.count == 0{
            next_flower.isEnabled = false
        }
        if plantinfo.growth_form.contains("prostate"){
            prostate.setOn(!prostate.isOn, animated: true)
        }
        if plantinfo.growth_form.contains("decumbent"){
            decumbent.setOn(!decumbent.isOn, animated: true)
        }
        if plantinfo.growth_form.contains("ascending"){
            ascending.setOn(!ascending.isOn, animated: true)
        }
        if plantinfo.growth_form.contains("erect"){
            erect.setOn(!erect.isOn, animated: true)
        }
        if plantinfo.growth_form.contains("mat"){
            mat.setOn(!mat.isOn, animated: true)
        }
        if plantinfo.growth_form.contains("clump"){
            clump.setOn(!clump.isOn, animated: true)
        }
        if plantinfo.growth_form.contains("rosette"){
            rosette.setOn(!rosette.isOn, animated: true)
        }
        if plantinfo.growth_form.contains("basil"){
            basil.setOn(!basil.isOn, animated: true)
        }
        if plantinfo.growth_form.contains("vine"){
            vine.setOn(!vine.isOn, animated: true)
        }
    }

}

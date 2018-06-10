//
//  FlowerViewController.swift
//  PlantID
//
//  Created by Apurva Jakhanwal on 4/30/18.
//  Copyright © 2018 UCI-Nature. All rights reserved.
//

import UIKit

class FlowerViewController: UIViewController {

    @IBOutlet var yes: UISwitch!
    @IBOutlet var no: UISwitch!
    
    @IBAction func yes_selected(yes: UISwitch){
        if(yes.isOn == true){
            plantinfo.flower = true
            print(plantinfo.flower)
        }
        else{
            plantinfo.flower = false
            }
    }
    
    @IBAction func no_selected(no: UISwitch){
        if(no.isOn == true){
            plantinfo.flower = true
            print(plantinfo.flower)
            plantinfo.flower_symmetry = []
            plantinfo.flower_color = []
        }
        else{
            plantinfo.flower = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yes.addTarget(self, action: #selector(FlowerViewController.yes_selected(yes:)), for: UIControlEvents.valueChanged)
        no.addTarget(self, action: #selector(FlowerViewController.no_selected(no:)), for: UIControlEvents.valueChanged)
        if (plantinfo.flower == true){
            yes.setOn(!yes.isOn, animated: true)
        }
        if (plantinfo.flower == false){
            no.setOn(!no.isOn, animated: true)
        }
    }

}

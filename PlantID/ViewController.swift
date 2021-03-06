//
//  ViewController.swift
//  PlantID
//
//  Created by Apurva Jakhanwal on 4/29/18.
//  Copyright © 2018 UCI-Nature. All rights reserved.
//

import UIKit

class PlantInfo{
    var group: Set<String> = []
    var shape: Set<String> = []
    var arrangement: Set<String> = []
    var growth_form: Set<String> = []
    var flower: Bool!
    var flower_color: Set<String> = []
    var flower_symmetry: Set<String> = []
}

class FoundPlants{
    var dict: Dictionary<String, [String]> = [:]
}

class FinalPlants{
    var codes: [String] = []
    var names: [String] = []
}

let plantinfo = PlantInfo()
let foundplants = FoundPlants()
let finalplants = FinalPlants()

class ViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        plantinfo.group = []
        plantinfo.shape = []
        plantinfo.arrangement = []
        plantinfo.growth_form = []
        plantinfo.flower_color = []
        plantinfo.flower = nil
        plantinfo.flower_symmetry = []
        foundplants.dict = [:]
        finalplants.names = []
        finalplants.codes = []
    }

}


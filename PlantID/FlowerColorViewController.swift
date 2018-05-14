//
//  FlowerColorViewController.swift
//  PlantID
//
//  Created by Apurva Jakhanwal on 4/30/18.
//  Copyright © 2018 UCI-Nature. All rights reserved.
//

import UIKit

class FlowerColorViewController: UIViewController {

    @IBOutlet var white: UISwitch!
    @IBOutlet var yellow: UISwitch!
    @IBOutlet var red: UISwitch!
    @IBOutlet var orange: UISwitch!
    @IBOutlet var blue: UISwitch!
    @IBOutlet var purple: UISwitch!
    @IBOutlet var green: UISwitch!
    @IBOutlet var pink: UISwitch!
    @IBOutlet var next_flowerSym: UIButton!
    
    @IBAction func white_selected(white: UISwitch) {
        if (white.isOn == true){
            plantinfo.flower_color.insert("white")
            print(plantinfo.flower_color)
            next_flowerSym.isEnabled = true
        }
        else{
            if (plantinfo.flower_color.contains("white")){
                plantinfo.flower_color.remove("white")
                if plantinfo.flower_color.count == 0{
                    next_flowerSym.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func yellow_selected(yellow: UISwitch) {
        if (yellow.isOn == true){
            plantinfo.flower_color.insert("yellow")
            print(plantinfo.flower_color)
            next_flowerSym.isEnabled = true
        }
        else{
            if (plantinfo.flower_color.contains("yellow")){
                plantinfo.flower_color.remove("yellow")
                if plantinfo.flower_color.count == 0{
                    next_flowerSym.isEnabled = false
                }
            }
        }
    }
    
    
    @IBAction func red_selected(red: UISwitch) {
        if (red.isOn == true){
            plantinfo.flower_color.insert("red")
            print(plantinfo.flower_color)
            next_flowerSym.isEnabled = true
        }
        else{
            if (plantinfo.flower_color.contains("red")){
                plantinfo.flower_color.remove("red")
                if plantinfo.flower_color.count == 0{
                    next_flowerSym.isEnabled = false
                }
            }
        }
    }
    
    
    @IBAction func orange_selected(orange: UISwitch) {
        if (orange.isOn == true){
            plantinfo.flower_color.insert("orange")
            print(plantinfo.flower_color)
            next_flowerSym.isEnabled = true
        }
        else{
            if (plantinfo.flower_color.contains("orange")){
                plantinfo.flower_color.remove("orange")
                if plantinfo.flower_color.count == 0{
                    next_flowerSym.isEnabled = false
                }
            }
        }
    }
    
    
    @IBAction func blue_selected(blue: UISwitch) {
        if (blue.isOn == true){
            plantinfo.flower_color.insert("blue")
            print(plantinfo.flower_color)
            next_flowerSym.isEnabled = true
        }
        else{
            if (plantinfo.flower_color.contains("blue")){
                plantinfo.flower_color.remove("blue")
                if plantinfo.flower_color.count == 0{
                    next_flowerSym.isEnabled = false
                }
            }
        }
    }
    
    
    @IBAction func purple_selected(purple: UISwitch) {
        if (purple.isOn == true){
            plantinfo.flower_color.insert("purple")
            print(plantinfo.flower_color)
            next_flowerSym.isEnabled = true
        }
        else{
            if (plantinfo.flower_color.contains("purple")){
                plantinfo.flower_color.remove("purple")
                if plantinfo.flower_color.count == 0{
                    next_flowerSym.isEnabled = false
                }
            }
        }
    }
    
    
    @IBAction func green_selected(green: UISwitch) {
        if (green.isOn == true){
            plantinfo.flower_color.insert("green")
            print(plantinfo.flower_color)
            next_flowerSym.isEnabled = true
        }
        else{
            if (plantinfo.flower_color.contains("green")){
                plantinfo.flower_color.remove("green")
                if plantinfo.flower_color.count == 0{
                    next_flowerSym.isEnabled = false
                }
            }
        }
    }
    
    
    @IBAction func pink_selected(pink: UISwitch) {
        if (pink.isOn == true){
            plantinfo.flower_color.insert("pink")
            print(plantinfo.flower_color)
            next_flowerSym.isEnabled = true
        }
        else{
            if (plantinfo.flower_color.contains("pink")){
                plantinfo.flower_color.remove("pink")
                if plantinfo.flower_color.count == 0{
                    next_flowerSym.isEnabled = false
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        white.addTarget(self, action: #selector(FlowerColorViewController.white_selected(white:)), for: UIControlEvents.valueChanged)
        yellow.addTarget(self, action: #selector(FlowerColorViewController.yellow_selected(yellow:)), for: UIControlEvents.valueChanged)
        red.addTarget(self, action: #selector(FlowerColorViewController.red_selected(red:)), for: UIControlEvents.valueChanged)
        orange.addTarget(self, action: #selector(FlowerColorViewController.orange_selected(orange:)), for: UIControlEvents.valueChanged)
        blue.addTarget(self, action: #selector(FlowerColorViewController.blue_selected(blue:)), for: UIControlEvents.valueChanged)
        purple.addTarget(self, action: #selector(FlowerColorViewController.purple_selected(purple:)), for: UIControlEvents.valueChanged)
        green.addTarget(self, action: #selector(FlowerColorViewController.green_selected(green:)), for: UIControlEvents.valueChanged)
        pink.addTarget(self, action: #selector(FlowerColorViewController.pink_selected(pink:)), for: UIControlEvents.valueChanged)
        if plantinfo.flower_color.count == 0{
            next_flowerSym.isEnabled = false
        }
        if plantinfo.flower_color.contains("white"){
            white.setOn(!white.isOn, animated: true)
        }
        if plantinfo.flower_color.contains("yellow"){
            yellow.setOn(!yellow.isOn, animated: true)
        }
        if plantinfo.flower_color.contains("red"){
            red.setOn(!red.isOn, animated: true)
        }
        if plantinfo.flower_color.contains("orange"){
            orange.setOn(!orange.isOn, animated: true)
        }
        if plantinfo.flower_color.contains("blue"){
            blue.setOn(!blue.isOn, animated: true)
        }
        if plantinfo.flower_color.contains("purple"){
            purple.setOn(!purple.isOn, animated: true)
        }
        if plantinfo.flower_color.contains("green"){
            green.setOn(!green.isOn, animated: true)
        }
        if plantinfo.flower_color.contains("pink"){
            pink.setOn(!pink.isOn, animated: true)
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

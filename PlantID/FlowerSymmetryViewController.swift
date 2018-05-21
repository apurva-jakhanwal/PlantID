//
//  FlowerSymmetryViewController.swift
//  PlantID
//
//  Created by Apurva Jakhanwal on 4/30/18.
//  Copyright © 2018 UCI-Nature. All rights reserved.
//

import UIKit

class FlowerSymmetryViewController: UIViewController {
    
    @IBOutlet var radial: UISwitch!
    @IBOutlet var bilateral: UISwitch!
    @IBOutlet var asymmetric: UISwitch!
    @IBOutlet var next_res: UIButton!
    @IBOutlet var scroll: UIScrollView!
    
    @IBAction func radial_selected(radial: UISwitch) {
        if (radial.isOn == true){
            plantinfo.flower_symmetry.insert("radial")
            print(plantinfo.flower_symmetry)
            next_res.isEnabled = true
        }
        else{
            if (plantinfo.flower_symmetry.contains("radial")){
                plantinfo.flower_symmetry.remove("radial")
                if plantinfo.flower_symmetry.count == 0{
                    next_res.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func bilateral_selected(bilateral: UISwitch) {
        if (bilateral.isOn == true){
            plantinfo.flower_symmetry.insert("bilateral")
            print(plantinfo.flower_symmetry)
            next_res.isEnabled = true
        }
        else{
            if (plantinfo.flower_symmetry.contains("bilateral")){
                plantinfo.flower_symmetry.remove("bilateral")
                if plantinfo.flower_symmetry.count == 0{
                    next_res.isEnabled = false
                }
            }
        }
    }
    
    @IBAction func asymmetric_selected(asymmetric: UISwitch) {
        if (asymmetric.isOn == true){
            plantinfo.flower_symmetry.insert("asymmetric")
            print(plantinfo.flower_symmetry)
            next_res.isEnabled = true
        }
        else{
            if (plantinfo.flower_symmetry.contains("asymmetric")){
                plantinfo.flower_symmetry.remove("asymmetric")
                if plantinfo.flower_symmetry.count == 0{
                    next_res.isEnabled = false
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
         scroll.contentSize = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height+280)
        
        radial.addTarget(self, action: #selector(FlowerSymmetryViewController.radial_selected(radial:)), for: UIControlEvents.valueChanged)
        bilateral.addTarget(self, action: #selector(FlowerSymmetryViewController.bilateral_selected(bilateral:)), for: UIControlEvents.valueChanged)
        asymmetric.addTarget(self, action: #selector(FlowerSymmetryViewController.asymmetric_selected(asymmetric:)), for: UIControlEvents.valueChanged)
        if plantinfo.flower_symmetry.count == 0{
            next_res.isEnabled = false
        }
        if plantinfo.flower_symmetry.contains("radial"){
            radial.setOn(!radial.isOn, animated: true)
        }
        if plantinfo.flower_symmetry.contains("bilateral"){
            bilateral.setOn(!bilateral.isOn, animated: true)
        }
        if plantinfo.flower_symmetry.contains("asymmetric"){
            asymmetric.setOn(!asymmetric.isOn, animated: true)
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

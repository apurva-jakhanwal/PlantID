//
//  ResultsViewController.swift
//  PlantID
//
//  Created by Apurva Jakhanwal on 4/30/18.
//  Copyright © 2018 UCI-Nature. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet var start_over: UIButton!
    @IBOutlet var scrollable_outputs: UITextView!
    
    func readLocalJsonFile() {
        let total = plantinfo.group.count + plantinfo.arrangement.count + plantinfo.growth_form.count + plantinfo.shape.count + plantinfo.flower_color.count + plantinfo.flower_symmetry.count
        print (total)
        
        if let urlPath = Bundle.main.url(forResource: "plants", withExtension: "json") {
            do {
                let jsonData = try Data(contentsOf: urlPath, options: .mappedIfSafe)
                if let jsonDict = try JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? [String: AnyObject] {
                    if let plantsArray = jsonDict["plants"] as? [[String: AnyObject]] {
                        for plant in plantsArray {
                            for (_, value) in plant {
                                let myStringArr = value.components(separatedBy: ", ")
                                for i in myStringArr{
                                    if (plantinfo.group.contains(i) || plantinfo.shape.contains(i) || plantinfo.arrangement.contains(i) || plantinfo.growth_form.contains(i) || plantinfo.flower_symmetry.contains(i) || plantinfo.flower_color.contains(i)){
                                        if var values = foundplants.dict[(plant["Common Name"] as! String) + "?" + (plant["Code"] as! String)] {
                                                values.append(i)
                                                foundplants.dict[(plant["Common Name"] as! String) + "?" + (plant["Code"] as! String)] = values
                                            }else {
                                                foundplants.dict[(plant["Common Name"] as! String) + "?" + (plant["Code"] as! String)] = [i]
                                            }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch let jsonError {
                print(jsonError)
            }
        }
        let byValue = {
            (elem1:(key: String, val: [String]), elem2:(key: String, val: [String]))->Bool in
            if elem1.val.count > elem2.val.count {
                return true
            } else {
                return false
            }
        }
        let sortedKeys = foundplants.dict.sorted(by: byValue)
        for (key, _) in sortedKeys {
            finalplants.codes.append(key.components(separatedBy: "?")[1])
            finalplants.names.append(key.components(separatedBy: "?")[0])
        }
        
        print(sortedKeys)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        readLocalJsonFile()
    }
    
}

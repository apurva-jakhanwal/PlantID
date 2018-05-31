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
        for (key, val) in sortedKeys {
            print(key, Float(val.count)/Float(total) * 100)
            print("\n")
        }
        print(sortedKeys)
        /*
        var s = String()
        var c = intmax_t()
        print(sortedKeys)
        for (key, _) in sortedKeys{
            if (c == 5){
                break
            }
            s.append(key)
            s.append("\n\n")
            c += 1
        }
        //output.text = s*/
        
        /*
        //create your UIImage
        let name = "greenery"
        let image = UIImage(named: name + ".jpg");
        //create and NSTextAttachment and add your image to it.
        let attachment = NSTextAttachment()
        attachment.image = image
        
        let oldWidth = attachment.image!.size.width;
        let scaleFactor = oldWidth / (scrollable_outputs.frame.size.width - 50);
        attachment.image = UIImage(cgImage: attachment.image!.cgImage!, scale: scaleFactor, orientation: .up)
        
        //put your NSTextAttachment into and attributedString
        let attString = NSAttributedString(attachment: attachment)
        //add this attributed string to the current position.
        scrollable_outputs.textStorage.insert(attString, at: scrollable_outputs.selectedRange.location)
        */
        
        // create an NSMutableAttributedString that we'll append everything to
        let fullString = NSMutableAttributedString(string: Array(sortedKeys)[0].0.components(separatedBy: "?")[0] + "\n\n")
        
        // create our NSTextAttachment
        let image1Attachment = NSTextAttachment()
        if FileManager.default.fileExists(atPath: "/Users/apurvajakhanwal/Downloads/images/" + Array(sortedKeys)[0].0.components(separatedBy: "?")[1] + "_Plant.jpg"){
            image1Attachment.image = UIImage(named: "/Users/apurvajakhanwal/Downloads/images/" + Array(sortedKeys)[0].0.components(separatedBy: "?")[1] + "_Plant.jpg")
        }
        else{
            image1Attachment.image = UIImage(named: "placeholder1.png")
        }
        let oldWidth = image1Attachment.image!.size.width;
        let scaleFactor = oldWidth / (scrollable_outputs.frame.size.width - 50);
        image1Attachment.image = UIImage(cgImage: image1Attachment.image!.cgImage!, scale: scaleFactor, orientation: .up)
        
        // wrap the attachment in its own attributed string so we can append it
        let image1String = NSAttributedString(attachment: image1Attachment)
        
        // add the NSTextAttachment wrapper to our full string, then add some more text.
        fullString.append(image1String)

        fullString.append(NSAttributedString(string: "\n\n" + Array(sortedKeys)[1].0.components(separatedBy: "?")[0] + "\n\n"))
        
        // create our NSTextAttachment
        let image2Attachment = NSTextAttachment()
        if FileManager.default.fileExists(atPath:"/Users/apurvajakhanwal/Downloads/images/" + Array(sortedKeys)[1].0.components(separatedBy: "?")[1] + "_Plant.jpg")
        {
            image2Attachment.image = UIImage(named: "/Users/apurvajakhanwal/Downloads/images/" + Array(sortedKeys)[1].0.components(separatedBy: "?")[1] + "_Plant.jpg")
        }
        else{
            image2Attachment.image = UIImage(named: "placeholder1.png")
        }
        let oldWidth2 = image2Attachment.image!.size.width;
        let scaleFactor2 = oldWidth2 / (scrollable_outputs.frame.size.width - 50);
        image2Attachment.image = UIImage(cgImage: image2Attachment.image!.cgImage!, scale: scaleFactor2, orientation: .up)
        
        // wrap the attachment in its own attributed string so we can append it
        let image2String = NSAttributedString(attachment: image2Attachment)
        
        // add the NSTextAttachment wrapper to our full string, then add some more text.
        fullString.append(image2String)
        fullString.append(NSAttributedString(string: "\n\n" + Array(sortedKeys)[2].0.components(separatedBy: "?")[0] + "\n\n"))
        
        // create our NSTextAttachment
        let image3Attachment = NSTextAttachment()
        if FileManager.default.fileExists(atPath:"/Users/apurvajakhanwal/Downloads/images/" + Array(sortedKeys)[2].0.components(separatedBy: "?")[1] + "_Plant.jpg")
        {
            image3Attachment.image = UIImage(named: "/Users/apurvajakhanwal/Downloads/images/" + Array(sortedKeys)[2].0.components(separatedBy: "?")[1] + "_Plant.jpg")
        }
        else{
            image3Attachment.image = UIImage(named: "placeholder1.png")
        }
        
        let oldWidth3 = image3Attachment.image!.size.width;
        let scaleFactor3 = oldWidth3 / (scrollable_outputs.frame.size.width - 50);
        image3Attachment.image = UIImage(cgImage: image3Attachment.image!.cgImage!, scale: scaleFactor3, orientation: .up)
        
        // wrap the attachment in its own attributed string so we can append it
        let image3String = NSAttributedString(attachment: image3Attachment)
        
        // add the NSTextAttachment wrapper to our full string, then add some more text.
        fullString.append(image3String)
        fullString.append(NSAttributedString(string: "\n\n" + Array(sortedKeys)[3].0.components(separatedBy: "?")[0] + "\n\n"))
        
        // create our NSTextAttachment
        let image4Attachment = NSTextAttachment()
        if FileManager.default.fileExists(atPath:"/Users/apurvajakhanwal/Downloads/images/" + Array(sortedKeys)[3].0.components(separatedBy: "?")[1] + "_Plant.jpg")
        {
            image4Attachment.image = UIImage(named: "/Users/apurvajakhanwal/Downloads/images/" + Array(sortedKeys)[3].0.components(separatedBy: "?")[1] + "_Plant.jpg")
        }
        else{
            image4Attachment.image = UIImage(named: "placeholder1.png")
        }
        let oldWidth4 = image4Attachment.image!.size.width;
        let scaleFactor4 = oldWidth4 / (scrollable_outputs.frame.size.width - 50);
        image4Attachment.image = UIImage(cgImage: image4Attachment.image!.cgImage!, scale: scaleFactor4, orientation: .up)
        
        // wrap the attachment in its own attributed string so we can append it
        let image4String = NSAttributedString(attachment: image4Attachment)
        
        // add the NSTextAttachment wrapper to our full string, then add some more text.
        fullString.append(image4String)
        fullString.append(NSAttributedString(string: "\n\n" + Array(sortedKeys)[4].0.components(separatedBy: "?")[0] + "\n\n"))
        
        // create our NSTextAttachment
        let image5Attachment = NSTextAttachment()
        if FileManager.default.fileExists(atPath:"/Users/apurvajakhanwal/Downloads/images/" + Array(sortedKeys)[4].0.components(separatedBy: "?")[1] + "_Plant.jpg")
        {
            image5Attachment.image = UIImage(named: "/Users/apurvajakhanwal/Downloads/images/" + Array(sortedKeys)[4].0.components(separatedBy: "?")[1] + "_Plant.jpg")
        }
        else{
            image5Attachment.image = UIImage(named: "placeholder1.png")
        }
        
        let oldWidth5 = image5Attachment.image!.size.width;
        let scaleFactor5 = oldWidth5 / (scrollable_outputs.frame.size.width - 50);
        image5Attachment.image = UIImage(cgImage: image5Attachment.image!.cgImage!, scale: scaleFactor5, orientation: .up)
        
        // wrap the attachment in its own attributed string so we can append it
        let image5String = NSAttributedString(attachment: image5Attachment)
        
        // add the NSTextAttachment wrapper to our full string, then add some more text.
        fullString.append(image5String)
        fullString.append(NSAttributedString(string: "\n\n"))
        
        // draw the result in a label
        scrollable_outputs.textStorage.insert(fullString, at: scrollable_outputs.selectedRange.location)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        readLocalJsonFile()
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

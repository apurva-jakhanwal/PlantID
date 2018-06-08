Read-me for iOS app

Installation and Deployment:
1. Go to App Store on your Mac (image below on the left) and download Xcode (image below on the right).
           
2. Go to: https://github.com/apurva-jakhanwal/PlantID. In that GitHub repository, click on ‘Clone or Download’ and select ‘Download ZIP’ as shown in the image below.

3. After the zip folder downloads, open it to unzip it and see the files in the folder.

4. Open ‘PlantID.xcodeproj’ (image below on the left) to edit the project and to build and run (the play button) it on simulators or your own device (image below on the right).
    
5. Go to 'PlantID' from the left under project navigator (image below on the left) and select the 'Team' under Signing (image below on the right). If you don't have a team click on 'Add an account' (drop-down under Team) and quickly set up your Apple ID to be able to add a team and build the app.
        
6. Once you add a team, click on the play button (as shown in the image in step 4) and you can view your app on a simulator. If you wish to view it on your device, make sure you select your device in the drop-down as shown in the image below and then click on play. 
 
7. If you are deploying the app on your phone, go to ‘Settings’ on your phone, then ‘Device Management’ and then app name, then click on ‘Trust’ and you should be all set to use the app on your phone. 
 
 
Adding Plants to the Database:
Instructions are in the Android read-me file. Copy paste the content of the JSON file from the Android app and paste into ‘plants.json’ in the iOS folder. 


Additional Information:
1. Xcode version: 9.3.1
2. Swift version: 4.1 
3. You may need to update your macOS
4. You may need to update the software on your iPhone
5. Images for the questions in the app and images of the plants for the results page are under ‘Assets.xcassets’. 
6. Appropriate image names are CODE_subjectX.png or CODE_subjectX.jpg where: 
    - CODE is the first three letters of the first word in the scientific name concatenated with the first three letters of the second word in the scientific name (This might not always be the code in the excel sheet)
    - subject is Flower, Cot, Plant, Seedling, Leaf or Fruit 
    - X is a sequential number starting at 2, meaning that if ACMGLA_Cot3 exists, ACMGLA_Cot2 must exist as well, or Cot3 will not be displayed. Ex: ACMGLA_Cot.jpg, ACMGLA_Cot2.png, ACMGLA_Cot3.jpg, ACMSTR_Fruit.jpg

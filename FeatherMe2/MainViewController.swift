//
//  MainViewController.swift
//  FeatherMe2
//
//  Created by Olivia Vahsen on 4/29/17.
//  Copyright © 2017 Olivia Vahsen. All rights reserved.
//

import UIKit

var userDfts = UserDefaults.standard



class MainViewController: UIViewController {
    
    //let pengDead = userDfts.value(forKey:"PengDead") as! Bool
    
    
    @IBOutlet weak var outCareOrStart: UIButton!
    
    @IBAction func btnCareOrStart(_ sender: Any) {
        
        //ifs not being reached
        
        let penguinName = userDfts.value(forKey: "Name")
       
        if(penguinName != nil) {
            
            let penguinVC = self.storyboard?.instantiateViewController(withIdentifier: "penguinController")
            self.show(penguinVC!, sender: nil)
        }
       /* else if(weakCount == 4)
        {
            let finalVC = self.storyboard?.instantiateViewController(withIdentifier: "finalController")
            self.show(finalVC!, sender: nil)
            
        }
        else if(pengDead == true)
        {
            let resetVC = self.storyboard?.instantiateViewController(withIdentifier: "resetController")
            self.show(resetVC!, sender: nil)
        }
 */
        else{
            
            let nameVC = self.storyboard?.instantiateViewController(withIdentifier: "nameController")
            self.show(nameVC!, sender: nil)
        }
        

        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let penguinName = userDfts.value(forKey: "Name")
        if(penguinName != nil){
            
            outCareOrStart.setTitle("Care For Pet", for: .normal)
            
        }
        else{
            outCareOrStart.setTitle("Get Started", for: .normal)
            
        }
        /*do {
            try foodCount =  userDfts.value(forKey: "Food") as! String
            print(foodCount)
        }
        catch{
            foodCount = 0
        }
        do {
            try loveCount = userDfts.value(forKey: "Love") as! Int
        }
        catch{
            loveCount = 0
        }
        do {
            try napCount = userDfts.value(forKey: "Nap") as! Int
        }
        catch{
            napCount = 0
        }
 */


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

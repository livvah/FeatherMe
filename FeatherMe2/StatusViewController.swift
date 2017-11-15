//
//  StatusViewController.swift
//  FeatherMe2
//
//  Created by Olivia Vahsen on 5/1/17.
//  Copyright © 2017 Olivia Vahsen. All rights reserved.
//

import UIKit


class StatusViewController: UIViewController {
    
    
    @IBOutlet weak var lblMeal: UILabel!
    
    @IBOutlet weak var lblNap: UILabel!
    
    @IBOutlet weak var lblLove: UILabel!
    
    @IBOutlet weak var lblPenguinNum: UILabel!
    
    func calPenguinDeath(){
        
        
        
        guard let foodTime = userDfts.value(forKey:"FoodTime") as? Int
        else{
            
            let foodTime = 0
            return
        }
        
        
        guard let loveTime = userDfts.value(forKey:"LoveTime") as? Int
        else{
            let loveTime = 0
            return
        }
        
        guard let napTime = userDfts.value(forKey:"NapTime") as? Int
        else{
            
            let napTime = 0
            return
        }
        
        if(((Int(Timestamp)) > (86400 + foodTime) && Int(foodCount) < 3 ) || (Int(Timestamp) > (86400 + loveTime) && Int(loveCount) < 4)  || (Int(Timestamp) > (86400 + napTime) && Int(napCount) < 1))
        {
            weakCount += 1
            print(weakCount)
            print("WEAK")
            userDfts.removeObject(forKey: "FoodTime")
            userDfts.removeObject(forKey: "LoveTime")
            userDfts.removeObject(forKey: "NapTime")
            userDfts.removeObject(forKey: "Food")
            userDfts.removeObject(forKey: "Nap")
            userDfts.removeObject(forKey: "Love")
            userDfts.removeObject(forKey: "Name")
            
            let stringWeakCount = String(weakCount)
            
            userDfts.set(stringWeakCount, forKey:"PenguinNum")
            
            pengDead = true
            print("DEAD")
            
            let resetVC = self.storyboard?.instantiateViewController(withIdentifier: "resetController")
            self.show(resetVC!, sender: nil)

        }
        else{
            
            let stringWeakCount = String(weakCount)
            
            userDfts.set(stringWeakCount, forKey:"PenguinNum")
        }
        userDfts.set(Bool(pengDead), forKey:"PengDead")
 
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
         calPenguinDeath()
        
           // print("read food")
           // print(userDfts.value(forKey: "Food") as! String?)
        
            if(userDfts.value(forKey: "Food") == nil)
            {
            
                lblMeal.text = "0"
                //print("if food")
                //print("userdfts:")
               // print(userDfts.value(forKey: "Food") as! String?)
            }
            else{
                 lblMeal.text = userDfts.value(forKey: "Food") as! String?
            }
     
            if(userDfts.value(forKey: "Nap") == nil)
            {
            
            
            lblNap.text = "0"
            
            }
            else{
                
                lblNap.text = userDfts.value(forKey: "Nap") as! String?
            }
        
            if(userDfts.value(forKey: "Food") == nil)
            {
            
                lblLove.text = "0"
            
            }
            else{
            
                lblLove.text = userDfts.value(forKey: "Love") as! String?

            }
        
        
            if(weakCount == 1)
            {
            
                lblPenguinNum.text = "1"
                print("Weak")
            
            }
            else{
                
                print("user")
                
                lblPenguinNum.text = userDfts.value(forKey: "PenguinNum") as! String?
                print(userDfts.value(forKey: "PenguinNum"))

                
            }
     
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnPenguin(_ sender: Any) {
        
        let penguinVC = self.storyboard?.instantiateViewController(withIdentifier: "penguinController")
        self.show(penguinVC!, sender: nil)
    }
    
    

    @IBAction func btnDemoReset(_ sender: Any) {
        
        
        let resetVC = self.storyboard?.instantiateViewController(withIdentifier: "resetController")
        self.show(resetVC!, sender: nil)
        
        weakCount += 1
        
        userDfts.removeObject(forKey: "FoodTime")
        userDfts.removeObject(forKey: "LoveTime")
        userDfts.removeObject(forKey: "NapTime")
        userDfts.removeObject(forKey: "Food")
        userDfts.removeObject(forKey: "Nap")
        userDfts.removeObject(forKey: "Love")
        userDfts.removeObject(forKey: "Name")
        
        
        

    }
    
    
    
    @IBAction func btnFinalDemo(_ sender: Any) {
        
        let finalVC = self.storyboard?.instantiateViewController(withIdentifier: "finalController")
        self.show(finalVC!, sender: nil)
        
    }

    

}

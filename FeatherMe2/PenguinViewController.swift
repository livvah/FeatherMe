//
//  PenguinViewController.swift
//  FeatherMe2
//
//  Created by Olivia Vahsen on 4/29/17.
//  Copyright © 2017 Olivia Vahsen. All rights reserved.
//

import UIKit

var Timestamp: TimeInterval {
    return NSDate().timeIntervalSince1970 * 1000
}


class PenguinViewController: UIViewController {
    
    //FIX THIS RESET
    
   

    @IBOutlet weak var pengView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text = userDfts.value(forKey: "Name") as! String?
        
        //print(Timestamp)

        // Do any additional setup after loading the view.
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBOutlet weak var lblName: UILabel!
    
    //set lbl to name in userdfts
    
    
    @IBOutlet weak var lblMessage: UILabel!
    
    //set message according to button pressed
    
    

    @IBAction func btnFeed(_ sender: Any) {
        
        //print("hello")
        
        
        foodCount += 1
        
        let foodCountString = String(foodCount)
        
        userDfts.set(foodCountString, forKey:"Food")
        print("Storing food:")
        print(foodCount)
        
        let image1 = UIImage(named: "food_penguin.png")
        let image0 = UIImage(named: "happy_penguin.png")
        
        
        let images = [image0!, image1!];
        pengView.animationImages = images
        pengView.animationDuration = 0.7
        pengView.startAnimating()
        
        Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(stopAnimatingPenguin), userInfo: nil, repeats: false)
        
        lblMessage.text = "is now full!"
        
       let intFoodTime = Int(Timestamp)
        
        
        ///et stringFoodTime = String(Timestamp)
        
        userDfts.set(intFoodTime, forKey:"FoodTime")
        
        
    }
    
    
    @IBAction func btnLove(_ sender: Any) {
        
        loveCount += 1

        
        let loveCountString = String(loveCount)
        
        userDfts.set(loveCountString, forKey:"Love")
        
        
        let image1 = UIImage(named: "love_penguin_sized.png")
        let image0 = UIImage(named: "happy_penguin.png")


        
        let images = [image0!, image1!];
        pengView.animationImages = images
        pengView.animationDuration = 0.4
        pengView.startAnimating()
        
        Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(stopAnimatingPenguin), userInfo: nil, repeats: false)

        lblMessage.text = "feels warm and fuzzy!"
        
        let intLoveTime = Int(Timestamp)
        
        userDfts.set(intLoveTime, forKey:"LoveTime")


    }

    
    @IBAction func btnNap(_ sender: Any) {
        
       napCount += 1

        
        let napCountString = String(napCount)
        
        userDfts.set(napCountString, forKey:"Nap")
        
        let image1 = UIImage(named: "sleep_penguin.png")
        let image0 = UIImage(named: "happy_penguin.png")
        
        
        
        let images = [image0!, image1!];
        self.pengView.animationImages = images
        self.pengView.animationDuration = 0.9
        self.pengView.startAnimating()
        
        Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(stopAnimatingPenguin), userInfo: nil, repeats: false)
        
        lblMessage.text = "is now sleepy."
        
        let intNapTime = Int(Timestamp)
        
        userDfts.set(intNapTime, forKey:"NapTime")
     
        
    }
    
    func stopAnimatingPenguin() {
        self.pengView.stopAnimating()
    }
    
    
    @IBAction func btnStatus(_ sender: Any) {
        
        let statusVC = self.storyboard?.instantiateViewController(withIdentifier: "statusController")
        self.show(statusVC!, sender: nil)
    }
    
    
}

//
//  NameViewController.swift
//  FeatherMe2
//
//  Created by Olivia Vahsen on 4/29/17.
//  Copyright © 2017 Olivia Vahsen. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var txtName: UITextField!
    
    
    
    @IBAction func btnDone(_ sender: Any) {
        
        
        userDfts.set(txtName.text, forKey: "Name")
        let penguinVC = self.storyboard?.instantiateViewController(withIdentifier: "penguinController")
        self.show(penguinVC!, sender: nil)

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

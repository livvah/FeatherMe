//
//  ResetViewController.swift
//  FeatherMe2
//
//  Created by Olivia Vahsen on 5/2/17.
//  Copyright © 2017 Olivia Vahsen. All rights reserved.
//

import UIKit

class ResetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnReset(_ sender: Any) {
        
        let nameVC = self.storyboard?.instantiateViewController(withIdentifier: "nameController")
        self.show(nameVC!, sender: nil)
        
    }
    

}

                                     //
//  ViewController.swift
//  Flip
//
//  Created by Munish Singhal on 9/22/18.
//  Copyright © 2018 Monkeys. All rights reserved.
//

import UIKit

class Profile: UIViewController{
    
    let lemonade: String = "Build a stand";
    let snacks: String = "Buy snacks";
    var jobs: Array<String> = [];
    var jobText = ""
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        jobs.append(lemonade)
        jobs.append(snacks)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //func defineList(jobs: Array<String>) -> Array<String> {
        //jobs.append("lemonade")
        //jobs.append("snacks")
        //return jobs
    //}
   
    @IBAction func appear(_ sender: Any) {
        let randomNumber: Int = Int(arc4random_uniform(UInt32(jobs.count)))
        self.jobText = jobs[randomNumber]
        performSegue(withIdentifier: "cardsTransfer", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Cards
        vc.actualJob = self.jobText
    }
}



//
//  Cards.swift
//  Flip
//
//  Created by Munish Singhal on 10/6/18.
//  Copyright © 2018 Monkeys. All rights reserved.
//

import UIKit



class Cards: UIViewController {  
    
    @IBOutlet weak var cardDisplay: UILabel!
    
    var actualJob = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardDisplay.text = actualJob

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func checkmark(_ sender: Any) {
        performSegue(withIdentifier: "accepted", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navVC = segue.destination as? UINavigationController
        let tableVC = navVC?.viewControllers.first as! Dashboard2
        tableVC.acceptedJob = actualJob
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

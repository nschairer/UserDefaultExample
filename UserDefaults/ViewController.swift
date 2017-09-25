//
//  ViewController.swift
//  UserDefaults
//
//  Created by Noah Schairer on 9/24/17.
//  Copyright © 2017 nschairer. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    var tapNumber = 0
    
    @IBOutlet weak var tapLbl: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tapLbl.text = "\(UserDefaults.standard.integer(forKey: "taps"))"

        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapbtnPressed(_ sender: Any) {
        
        if Int(tapLbl.text!)! > tapNumber {
            tapNumber = Int(tapLbl.text!)!
            
            tapNumber += 1
            
            //sets data
            UserDefaults.standard.set(tapNumber, forKey: "taps")
            tapLbl.text = "\(UserDefaults.standard.integer(forKey: "taps"))"
        } else {
            tapNumber += 1
            //sets data
            UserDefaults.standard.set(tapNumber, forKey: "taps")
            tapLbl.text = "\(UserDefaults.standard.integer(forKey: "taps"))"
        }
        
        
        
        
    }
    

    @IBAction func resetbtnPressed(_ sender: Any) {
        tapNumber = 0
        //removes object from userdefaults
        UserDefaults.standard.removeObject(forKey: "taps")
        tapLbl.text = "0"
    }
    
}


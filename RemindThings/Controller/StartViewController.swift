//
//  HomeViewController.swift
//  RemindThings
//
//  Created by NganHa on 4/19/20.
//  Copyright © 2020 Galaxy. All rights reserved.
//

import UIKit


class StartViewController: UIViewController {

    @IBOutlet weak var remindLabel: UILabel!
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        animationLabel()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startPressed(_ sender: UIButton) {
//         self.performSegue(withIdentifier: K.Segue.StartToSignIn, sender: self)
    }
        
    func animationLabel(){
        remindLabel.text = ""
        var charIndex = 0.0
        let titleIndex = "🔔 Remind Things"
        for letter in titleIndex {
            Timer.scheduledTimer(withTimeInterval: 0.1*charIndex, repeats: false) { (timer) in
                self.remindLabel.text?.append(letter)
            }
            charIndex += 1
        }
    
    }
    }
    
    
 



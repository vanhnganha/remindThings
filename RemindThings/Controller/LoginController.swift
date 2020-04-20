//
//  ViewController.swift
//  RemindThings
//
//  Created by NganHa on 4/18/20.
//  Copyright © 2020 Galaxy. All rights reserved.
//

import UIKit
import Firebase
class LoginController: UIViewController{
    var data = ""
    @IBOutlet weak var passwordText: UITextField!{
    didSet {
       passwordText.tintColor = UIColor.lightGray
        passwordText.setIcon(#imageLiteral(resourceName: "Key-icon"))
    
    }
    }
    @IBOutlet weak var usernameText: UITextField!{
    didSet {
       usernameText.tintColor = UIColor.lightGray
        usernameText.setIcon(#imageLiteral(resourceName: "person-male"))
    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signinPressed(_ sender: UIButton) {
        if let email = usernameText.text, let password = passwordText.text{
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            if error != nil {
            let alert = UIAlertController(title: "Can not sign in", message: "Email or password is not corrected", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default) { (action) in
                    self!.usernameText.text = nil
                    self!.passwordText.text = nil
                }
                alert.addAction(action)
                self!.present(alert, animated: true, completion: nil)
            }
        else {
                self!.performSegue(withIdentifier: K.Segue.SignInToHome, sender: self)
            }
        }
            
        
       
        }
    }
    
    @IBAction func facebookPressed(_ sender: UIButton) {
    }
    
    @IBAction func googlePressed(_ sender: UIButton) {
    }
    
    @IBAction func signupPressed(_ sender: UIButton) {
//        self.performSegue(withIdentifier: K.Segue.SignInToSignUp, sender: self)
    }
   
  
   
}




 




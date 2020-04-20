//
//  LoginViewController.swift
//  Expecting
//
//  Created by Kharee MacElree on 4/1/20.
//  Copyright © 2020 Kharee MacElree. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage


class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onLoginButton(_ sender: Any) {
        
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password)
            { (user, error) in
                if user != nil {
                    self.performSegue(withIdentifier: "loginSegue", sender: nil)
                } else {
                    print("Error: \(error?.localizedDescription)")
                }
            
        }
    }
    
    
    
    @IBAction func onSignUpButton(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = usernameField.text
        
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "SignUpSegue", sender: nil)
            }else{
                print("Error: \(error?.localizedDescription)")
                
            }
        }        
    }
    

    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

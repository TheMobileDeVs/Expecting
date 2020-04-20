//
//  SignUpViewController.swift
//  Expecting
//
//  Created by Kharee MacElree on 4/1/20.
//  Copyright © 2020 Kharee MacElree. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage


class SignUpViewController: UIViewController {

    
    @IBOutlet weak var userNameField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
   
    @IBAction func onRegisterButton(_ sender: Any) {
        
        let username = userNameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password)
            { (user, error) in
                if user != nil {
                    self.performSegue(withIdentifier: "registerSegue", sender: nil)
                    print("it worked")
                }
                else {
                    
                   self.performSegue(withIdentifier: "registerSegue", sender: nil)
                    print("Error: \(error?.localizedDescription)")
                }
            
    }
    
        
    }
    
    
    
    
    
    @IBAction func onBackButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
    @IBAction func FirstFourMonths(_ sender: Any) {
        self.performSegue(withIdentifier: "MonthSegue", sender: nil)
        }
    

    @IBAction func LastFiveMonths(_ sender: Any) {
        self.performSegue(withIdentifier: "LastMonthSegue", sender: nil)
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

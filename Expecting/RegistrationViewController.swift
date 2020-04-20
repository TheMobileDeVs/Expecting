//
//  RegistrationViewController.swift
//  Expecting
//
//  Created by Kharee MacElree on 4/1/20.
//  Copyright © 2020 Kharee MacElree. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var weeksPregnant: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var dueDateField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onDoneButton(_ sender: Any) {
        self.performSegue(withIdentifier: "registrationToHomePage", sender: nil)
       // print("Error: \(error?.localizedDescription)")
    }
    
    
    
    @IBAction func RegistrationPageBackButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
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

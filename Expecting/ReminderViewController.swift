//
//  ReminderViewController.swift
//  Expecting
//
//  Created by Akash_DSU on 4/27/20.
//  Copyright © 2020 Kharee MacElree. All rights reserved.
//

import UIKit
import UserNotifications

class ReminderViewController: UIViewController {

    @IBAction func ReturnButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var msg: UITextField!
    @IBOutlet var datepicker: UIDatePicker!
    @IBAction func save(_ sender: Any) {
        let time = self.datepicker.date.timeIntervalSinceNow
        let msg = (self.msg.text)!
        
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            if settings.authorizationStatus == UNAuthorizationStatus.authorized {
                
                if time > 0 {
                    let nContent = UNMutableNotificationContent()
                    nContent.body = msg
                    nContent.title = "Reminder"
                    nContent.sound = UNNotificationSound.default
                    
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
                    
                    let request = UNNotificationRequest(identifier: "reminder", content: nContent, trigger: trigger)
                    
                    UNUserNotificationCenter.current().add(request) { (_) in
                        DispatchQueue.main.async {
                            let alert = UIAlertController(title: "Success", message: "Notification is registerd.", preferredStyle: .alert)
                            let ok = UIAlertAction(title: "OK", style: .default)
                            alert.addAction(ok)
                            self.present(alert, animated: false)
                        }
                    }
                } else { // time < 0
                    DispatchQueue.main.async {
                        let alert = UIAlertController(title: "Fail", message: "Time interval is less than 0", preferredStyle: .alert)
                        let ok = UIAlertAction(title: "OK", style: .default)
                        alert.addAction(ok)
                        self.present(alert, animated: false)
                    }
                }
            }else { // not allowed
                DispatchQueue.main.async {
                    let alert = UIAlertController(title: "Fail", message: "You didn't allow notifications.", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "OK", style: .default)
                    alert.addAction(ok)
                    self.present(alert, animated: false)
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

//
//  MonthViewController.swift
//  Expecting
//
//  Created by Papa Kwaku  on 4/19/20.
//  Copyright © 2020 Kharee MacElree. All rights reserved.
//

import UIKit
import Alamofire

class MonthViewController: UIViewController {
   
    
    @IBOutlet weak var tableView: UITableView!
    
    var questions = [[String:Any]] ()

    @IBAction func Back_Button(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.dataSource = self
        //tableView.delegate = self
        
        
        
        //let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
        //let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        //let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
       // let task = session.dataTask(with: request) { (data, response, error) in
           // This will run when the network request returns
        //   if let error = error {
        //      print(error.localizedDescription)
        //   } else if let data = data {
        //      let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]

              // TODO: Get the array of movies
              // TODO: Store the movies in a property to use elsewhere
              // TODO: Reload your table view data
            
           // self.questions = dataDictionary["results"] as! [[String:Any]]
            
            //self.tableView.reloadData()
            //print(dataDictionary)

         //  }
      //  }
        //task.resume()
   // }
    
    //func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           
      //  return questions.count
      // }
       
       //func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          // let cell = UITableViewCell()
        
        
        
           //let question = questions[indexPath.row]
          // let title = question["title"] as! String
        
          // cell.textLabel!.text = title
    
       // return cell
     //  }
    }

    @IBAction func Question1(_ sender: Any) {
         self.performSegue(withIdentifier: "QuestionSegue", sender: nil)
    }
    
    @IBAction func Question2(_ sender: Any) {
         self.performSegue(withIdentifier: "QuestionSegue", sender: nil)
    }
    
    @IBAction func Question3(_ sender: Any) {
         self.performSegue(withIdentifier: "QuestionSegue", sender: nil)
    }
    
    @IBAction func Question4(_ sender: Any) {
         self.performSegue(withIdentifier: "QuestionSegue", sender: nil)
    }
    
    @IBAction func Question5(_ sender: Any) {
         self.performSegue(withIdentifier: "QuestionSegue", sender: nil)
    }
    
}

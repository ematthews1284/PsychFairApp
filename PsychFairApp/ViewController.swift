//
//  ViewController.swift
//  PsychFairApp
//
//  Created by period3 on 10/29/18.
//  Copyright © 2018 period3. All rights reserved.
//

import UIKit
import FirebaseDatabase
import Firebase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var groups: [String] = ["Station Name"]
    
    
    var answer1 = ""
    var ref: DatabaseReference!
    let apiKey = "AIzaSyBuO2Z6d5C7B05MDnr-kpDfk-nbaG3m3qk"
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = groups[indexPath.row]
        cell.detailTextLabel?.text = answer1
        return cell
    }
    
//    func parse(json: JSON)
//    {
//        for result in json["groups"].arrayValue
//        {
//            let Question1 = result[""].stringValue
//            let Answer1 = result[""].stringValue
//            let Question2 = result[""].stringValue
//            let Answer2 = ["":Question1, "":Answer1, "":url]
//            groups.append(source)
//        }
//        tableView.reloadData()
//    }
    
}


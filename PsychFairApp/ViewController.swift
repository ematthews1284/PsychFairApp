//
//  ViewController.swift
//  PsychFairApp
//
//  Created by period3 on 10/29/18.
//  Copyright © 2018 period3. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var groups: [String] = ["I need a place holder so yea here"]
    
    let apiKey = "AIzaSyBuO2Z6d5C7B05MDnr-kpDfk-nbaG3m3qk"
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = groups[indexPath.row]
        //cell.detailTextLabel?.text =
        return cell
    }
    
//    func parse(json: JSON)
//    {
//        for result in json["groups"].arrayValue
//        {
//            let url = result[""].stringValue
//            let name = result[""].stringValue
//            let description = result[""].stringValue
//            let source = ["":description, "":name, "":url]
//            groups.append(source)
//        }
//        tableView.reloadData()
//    }
    
}


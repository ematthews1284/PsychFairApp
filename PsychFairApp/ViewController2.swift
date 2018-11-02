//
//  ViewController2.swift
//  PsychFairApp
//
//  Created by period3 on 10/29/18.
//  Copyright © 2018 period3. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var questionLabel1: UILabel!
    @IBOutlet weak var answerTextField1: UITextField!
    @IBOutlet weak var questionLabel2: UILabel!
    @IBOutlet weak var answerTextField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        //answers go to Firebase
        let answer1 = answerTextField1.text
        let answer2 = answerTextField2.text
        let alert = UIAlertController(title: "Submit?", message: "Please enter the given code below", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
    }
    

}

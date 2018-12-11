import UIKit
import FirebaseDatabase
import Firebase

class ViewController2: UIViewController {
    
    var ref: DatabaseReference!
    
    @IBOutlet weak var questionLabel1: UILabel!
    @IBOutlet weak var answerTextField1: UITextField!
    @IBOutlet weak var questionLabel2: UILabel!
    @IBOutlet weak var answerTextField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        //answers go to Firebase
        let answer1 = answerTextField1.text
        let answer2 = answerTextField2.text
        print(answer1)
        alert()
    }
    
    func alert()
    {
        let alert = UIAlertController(title: "Submit?", message: "You cannot go back after you submit.", preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Yes", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(okayAction)
        alert.addAction(cancelAction)
        alert.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter Code"
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
    func prepare(for segue: UIStoryboardSegue, with identifier: String,  sender: Any?) {
        
        let answers1 = answerTextField1.text
        let nvc = segue.destination as! ViewController
        nvc.answer1 = answers1!
        
    }
}

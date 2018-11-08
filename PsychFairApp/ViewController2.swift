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
        alert()
    }
    
    func alert()
    {
        let alert = UIAlertController(title: "Submit?", message: "Please enter the given code below", preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Yes", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(okayAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
        
    }
    
}

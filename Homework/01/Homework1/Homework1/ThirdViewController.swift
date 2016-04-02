
import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var outputText: UILabel!
    
    
    @IBAction func buttonClicked(sender: AnyObject) {
        let input:String = inputText.text!
        if let num = Int(input) {
            if (num % 2 == 0) {
                outputText.text = "is even"
            } else {
                outputText.text = "is not even"
            }
        }
    }
    
  /*
  TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be shown on the label indicating whether the number is even.
  
  */
}

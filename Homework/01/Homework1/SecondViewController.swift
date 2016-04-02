
import UIKit

class SecondViewController: UIViewController {
  
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var sum: UILabel!
    var sumOutput:Int = 0
    @IBAction func buttonClicked(sender: AnyObject) {
        var sumArray:[Int] = [0]
        let input:String = inputText.text!
        let numOptional = Int(input)
        if let num = numOptional {
            
            sumArray.append(num)
            
            
            var counter:Int = 0
            while (counter < sumArray.count) {
                
                sumOutput = sumOutput + sumArray[counter]
                
                counter++
                
                
            }
            sum.text = String(sumOutput)
        }
        
        
        
    }
  //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}

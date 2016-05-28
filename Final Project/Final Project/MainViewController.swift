//
//  MainViewController.swift
//  Final Project
//
//  Created by Lok on 18/5/2016.
//  Copyright © 2016 Lok. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var Marvel: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonClicked(sender: AnyObject) {
        
        var transform = CGAffineTransformMakeScale(1.5, 1.5)
        
        transform = CGAffineTransformTranslate(transform, 100, 100)
        
        transform = CGAffineTransformRotate(transform, CGFloat(M_PI))
        
        self.label.transform = transform
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UIView.animateWithDuration(5.0) {
            self.Marvel.alpha = 1.0
            
            self.Marvel.transform = CGAffineTransformMakeScale(1.5, 1.5)
            
    }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

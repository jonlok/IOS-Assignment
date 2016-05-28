//
//  MarvelViewController.swift
//  Final Project
//
//  Created by Lok on 18/5/2016.
//  Copyright © 2016 Lok. All rights reserved.
//

import UIKit

class MarvelViewController: UIViewController {

    @IBOutlet weak var Marvel: UILabel!
    
    @IBAction func handlePan(sender: AnyObject) {
        
        print(sender.translationInView(self.view))
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
        
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

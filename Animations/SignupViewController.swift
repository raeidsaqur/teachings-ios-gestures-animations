//
//  SignupViewController.swift
//  Animations
//
//  Created by Raeid Saqur on 2016-02-09.
//  Copyright © 2016 Raeid Saqur. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var blueBox: UIView!
    
    var toggleColor:Bool = true
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Move the UIViews outside the view frame
//        self.passwordTextfield.center.x -= view.bounds.width
//        self.blueBox.center.x -= view.bounds.width

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: { () -> Void in
//            self.passwordTextfield.center.x += self.view.bounds.width
//            self.blueBox.center.x += self.view.bounds.width
//            }) { (success) -> Void in
//                print("Animation successful")
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        UIView.animate(withDuration: 5, animations: {
            self.passwordTextfield.isHidden = false
        }) 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //CAKeyframeAnimation e.g.:
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        print("\(#function) - line: \(#line) ")
        let shake = CAKeyframeAnimation()
        
        //keypath is the property path that's being animated
        // in this case, we are animating the view frame's x position
        shake.keyPath = "position.x"
        
        shake.duration = 1
        
        shake.keyTimes = [0, 0.25, 0.5, 0.75, 1]
        shake.values =   [0, -10, 10, -10, 0]

        shake.isAdditive = true
        shake.repeatCount = 1
        
        passwordTextfield.layer.add(shake, forKey: "shake")
    
    }
    
    /**
     This method showcases 'Animating view with block
     objects'.
     
     - parameter sender: <#sender description#>
     */
    
    @IBAction func animateBlueBoxPressed2(_ sender: AnyObject) {
        
        print("Animating Blue Box")
        var color = self.blueBox.backgroundColor
        
        color = color == UIColor.green ? UIColor.blue : UIColor.green
        
        UIView.animate(withDuration: 1.0, animations: {
            //Speficy the end state of the view
            self.blueBox.backgroundColor = color
            self.blueBox.transform = CGAffineTransform(scaleX: 2, y: 2)
        }) 
        
    }
    
    @IBAction func animateBlueBoxPressed(_ sender: AnyObject) {
        
        print("Animating Blue Box")
        //let origColor = self.blueBox.backgroundColor
        var color = self.blueBox.backgroundColor
        
        //start state
        self.blueBox.alpha = 1.0
        
        color = color == UIColor.green ? UIColor.blue : UIColor.green
        
        UIView.animate(withDuration: 1.0, delay: 0, options:[.repeat, .autoreverse], animations: { () -> Void in
            
            //End state
            self.blueBox.backgroundColor = color
            let transform = CGAffineTransform(scaleX: 3 , y: 3)
            self.blueBox.transform = transform.rotated(by: 0.50)
            
            self.blueBox.alpha = 0.30
            
            }) { (success) -> Void in
                //Success: Revert back
                color = color == UIColor.green ? UIColor.blue : UIColor.green
                self.blueBox.backgroundColor = color
                self.blueBox.transform  = CGAffineTransform(scaleX: 1, y: 1)
                self.blueBox.alpha = 1.0
        }
        
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

//
//  TapGestureViewController.swift
//  Animations
//
//  Created by Raeid Saqur on 2016-02-09.
//  Copyright © 2016 Raeid Saqur. All rights reserved.
//

import UIKit

class TapGestureViewController: UIViewController, UIGestureRecognizerDelegate{

    
    @IBOutlet var tapGestureRecognizer: UITapGestureRecognizer!
    
    //weak var delegate: UIGestureRecognizerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.tapGestureRecognizer.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func tappedPurpleView(_ sender: Any) {
        
        print("\(#function): You have tapped on the purple box")
    }
    
    @IBAction func tappedView(_ sender: UITapGestureRecognizer) {
        
        print("\(#function): You have tapped on the View")
        
    }
    
    @IBAction func tappedRedBoxView(_ sender: UITapGestureRecognizer) {
        
        print("\(#function): You have tapped on the red box")
        
    }
    
    
    
    
    @IBAction func pinchedView(_ sender: UIPinchGestureRecognizer) {
        print("\(#function): pinchedView")
        
    }
    
    
    //MARK: - UIGestureRecognizerDelegate
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        print("\(#function)")
        
        return true
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        print("\(#function)")
        
        return true
    }

    

    
}


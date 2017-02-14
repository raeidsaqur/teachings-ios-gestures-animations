//
//  PinchGestureViewController.swift
//  Animations
//
//  Created by Raeid Saqur on 2016-02-09.
//  Copyright © 2016 Raeid Saqur. All rights reserved.
//

import UIKit

class PinchGestureViewController: UIViewController {
    
    @IBOutlet weak var redBox: UIView!
    
    @IBAction func pinchedMyView(_ sender: UIPinchGestureRecognizer) {
        
        
        print("\(#function):pinchedMyView");
        
        redBox.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
        
        
    }
    

}

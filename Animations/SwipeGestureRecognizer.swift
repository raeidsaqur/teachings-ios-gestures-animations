//
//  SwipeGestureRecognizer.swift
//  Animations
//
//  Created by Raeid Saqur on 2016-06-12.
//  Copyright © 2016 Raeid Saqur. All rights reserved.
//

import Foundation
import UIKit

class SwipeGestureViewController: UIViewController {
    
 
    
    @IBAction func leftSwipeRecognized(_ sender: UISwipeGestureRecognizer!) {
        
        print("Left Swipe detected")
    }
    
    
    @IBAction func rightSwipeRecognized(_ sender: UISwipeGestureRecognizer) {
        print("Right Swipe detected")
    }
   
}

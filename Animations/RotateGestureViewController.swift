//
//  RotateGestureViewController.swift
//  Animations
//
//  Created by Raeid Saqur on 2016-02-09.
//  Copyright © 2016 Raeid Saqur. All rights reserved.
//

import UIKit

class RotateGestureViewController: UIViewController {
    
    @IBOutlet weak var redBox: UIView!
    @IBOutlet weak var blueBox: UIView!
    
    @IBAction func rotatedView(_ sender: UIRotationGestureRecognizer) {
        
        print("\(#function): Rotating view")
        blueBox.backgroundColor = UIColor.green
        blueBox.transform = CGAffineTransform(rotationAngle: sender.rotation)
        
        redBox.backgroundColor = UIColor.yellow
        redBox.transform = CGAffineTransform(rotationAngle: sender.rotation)
        
    }
    
    
//    @IBAction func redBoxPinched(sender: UIPinchGestureRecognizer) {
//        
//        print("Action from pinch recognizer")
//        
//    }

}

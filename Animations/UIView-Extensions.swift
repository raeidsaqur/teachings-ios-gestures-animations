//
//  UIView-Extensions.swift
//  Animations
//
//  Created by Raeid Saqur on 2016-06-12.
//  Copyright © 2016 Raeid Saqur. All rights reserved.
//

import CoreFoundation
import Foundation
import UIKit


//UIView
extension UIView {
    
    func shakeItAnimation(_ view:UIView) {
        let reset = 5
        let maxShakes = 6
        
        let shakes:Int = 0;
        let translate = reset
        
//        UIView.animateKeyframesWithDuration(0.09 - (shakes * 0.01), delay: 0.01, options: UIViewAnimationCurve.EaseInOut, animations: {
//                view.transform = CGAffineTransformMakeTranslation(translate, 0)
//            }), { finished in
//                if shakes < maxShakes {
//                    shakes += 1
//                    if translate > 0 {
//                        translate -= 1
//                    }
//                    translate *= -1
//                    UIView.shakeItAnimation(view)
//                } else {
//                    view.transform = CGAffineTransformIdentity
//                    shakes = 0
//                    translate = reset
//                }
//                return
//        }
    }
}

extension UIView {
    var width:      CGFloat { return self.frame.size.width }
    var height:     CGFloat { return self.frame.size.height }
    var size:       CGSize  { return self.frame.size}
    
    var origin:     CGPoint { return self.frame.origin }
    var x:          CGFloat { return self.frame.origin.x }
    var y:          CGFloat { return self.frame.origin.y }
    var centerX:    CGFloat { return self.center.x }
    var centerY:    CGFloat { return self.center.y }
    
    var left:       CGFloat { return self.frame.origin.x }
    var right:      CGFloat { return self.frame.origin.x + self.frame.size.width }
    var top:        CGFloat { return self.frame.origin.y }
    var bottom:     CGFloat { return self.frame.origin.y + self.frame.size.height }
    
    
    
    
    func setWidth(_ width:CGFloat)
    {
        self.frame.size.width = width
    }
    
    func setHeight(_ height:CGFloat)
    {
        self.frame.size.height = height
    }
    
    func setSize(_ size:CGSize)
    {
        self.frame.size = size
    }
    
    func setOrigin(_ point:CGPoint)
    {
        self.frame.origin = point
    }
    
    func setX(_ x:CGFloat) //only change the origin x
    {
        self.frame.origin = CGPoint(x: x, y: self.frame.origin.y)
    }
    
    func setY(_ y:CGFloat) //only change the origin x
    {
        self.frame.origin = CGPoint(x: self.frame.origin.x, y: y)
    }
    
    func setCenterX(_ x:CGFloat) //only change the origin x
    {
        self.center = CGPoint(x: x, y: self.center.y)
    }
    
    func setCenterY(_ y:CGFloat) //only change the origin x
    {
        self.center = CGPoint(x: self.center.x, y: y)
    }
    
    func roundCorner(_ radius:CGFloat)
    {
        self.layer.cornerRadius = radius
    }
    
    func setTop(_ top:CGFloat)
    {
        self.frame.origin.y = top
    }
    
    func setLeft(_ left:CGFloat)
    {
        self.frame.origin.x = left
    }
    
    func setRight(_ right:CGFloat)
    {
        self.frame.origin.x = right - self.frame.size.width
    }
    
    func setBottom(_ bottom:CGFloat)
    {
        self.frame.origin.y = bottom - self.frame.size.height
    }
}


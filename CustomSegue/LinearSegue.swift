//
//  HorizontalSegue.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import UIKit

class LinearSegue: UIStoryboardSegue {

    var direction = Direction.LeftToRight
    
    override func perform() {
        // Assign the source and destination views to local variables.
        var firstVCView = self.sourceViewController.view as UIView!
        var secondVCView = self.destinationViewController.view as UIView!
        
        // Get the screen width and height.
        let screenWidth = UIScreen.mainScreen().bounds.size.width
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        // Specify the initial position of the destination view.
        secondVCView.frame = CGRectMake(direction.x()*screenWidth, direction.y()*screenHeight, screenWidth, screenHeight)
        
        // Access the app's key window and insert the destination view above the current (source) one.
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(secondVCView, aboveSubview: firstVCView)
        
        // Animate the transition.
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            switch self.direction {
            case .LeftToRight:
                firstVCView.frame = CGRectOffset(firstVCView.frame, screenWidth, 0.0)
                secondVCView.frame = CGRectOffset(secondVCView.frame, screenWidth, 0.0)
            case .RightToLeft:
                firstVCView.frame = CGRectOffset(firstVCView.frame, -screenWidth, 0.0)
                secondVCView.frame = CGRectOffset(secondVCView.frame, -screenWidth, 0.0)
            case .BottomToTop:
                firstVCView.frame = CGRectOffset(firstVCView.frame, 0.0, -screenHeight)
                secondVCView.frame = CGRectOffset(secondVCView.frame, 0.0, -screenHeight)            case .TopToBottom:
                    firstVCView.frame = CGRectOffset(firstVCView.frame, 0.0, screenHeight)
                    secondVCView.frame = CGRectOffset(secondVCView.frame, 0.0, screenHeight)
            }
            
            
            }, completion: { (Finished) -> Void in
                self.sourceViewController.presentViewController((self.destinationViewController as! UIViewController) as UIViewController,
                    animated: false,
                    completion: nil)
        })
    }
}

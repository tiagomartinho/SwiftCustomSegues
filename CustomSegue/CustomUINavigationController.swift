//
//  CustomUINavigationController.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import UIKit

class CustomUINavigationController:UINavigationController {
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
    }
    
    override func segueForUnwindingToViewController(toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue {
        if let id = identifier{
            if id == "idLeftSegueUnwind" {
                let unwindSegue = HorizontalSegueUnwind(identifier: id, source: fromViewController, destination: toViewController, performHandler: { () -> Void in
                    
                })
                unwindSegue.direction = Direction.LeftToRight
                return unwindSegue
            }
            if id == "idRightSegueUnwind" {
                let unwindSegue = HorizontalSegueUnwind(identifier: id, source: fromViewController, destination: toViewController, performHandler: { () -> Void in
                    
                })
                unwindSegue.direction = Direction.RightToLeft
                return unwindSegue
            }
        }
        
        return super.segueForUnwindingToViewController(toViewController, fromViewController: fromViewController, identifier: identifier)
    }
}
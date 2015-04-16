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
            let unwindSegue = LinearSegueUnwind(identifier: id, source: fromViewController, destination: toViewController, performHandler: { () -> Void in
                
            })
            switch id {
            case "idLeftSegueUnwind":
                unwindSegue.direction = Direction.RightToLeft
                return unwindSegue
            case "idRightSegueUnwind":
                unwindSegue.direction = Direction.LeftToRight
            case "idBottomSegueUnwind":
                unwindSegue.direction = Direction.TopToBottom
            case "idTopSegueUnwind":
                unwindSegue.direction = Direction.BottomToTop
            default: break
            }
            return unwindSegue
        }
        
        return super.segueForUnwindingToViewController(toViewController, fromViewController: fromViewController, identifier: identifier)
    }
}
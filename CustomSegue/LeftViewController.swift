//
//  LeftViewController.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        var swipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "showMainViewController")
        swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    func showMainViewController() {
        self.performSegueWithIdentifier("idLeftSegueUnwind", sender: self)
    }
    
    @IBAction func pushViewController(sender: UIBarButtonItem) {
        if let rightViewController = self.storyboard?.instantiateViewControllerWithIdentifier("RightViewController") as? RightViewController {
            self.navigationController?.pushViewController(rightViewController, animated: true)
        }
    }
}

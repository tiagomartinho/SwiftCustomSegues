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
    
    @IBAction func showMainViewController(sender: AnyObject) {
        showMainViewController()
    }
    func showMainViewController() {
        self.performSegueWithIdentifier("idLeftSegueUnwind", sender: self)
    }
    
    @IBAction func pushViewController(sender: UIBarButtonItem) {
        if let viewController = self.storyboard?.instantiateViewControllerWithIdentifier("UIViewController") as? UIViewController {
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

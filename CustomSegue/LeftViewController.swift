//
//  LeftViewController.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import UIKit

class LeftViewController: GeneralViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        addSwipeGestureRecognizer(UISwipeGestureRecognizerDirection.Left,action:"showMainViewController")
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

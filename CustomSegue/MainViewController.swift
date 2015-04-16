//
//  ViewController.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import UIKit

class MainViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        var swipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "showLeftViewController")
        swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    @IBAction func showLeftViewController(sender: UIBarButtonItem) {
        showLeftViewController()
    }
    
    func showLeftViewController() {
        self.performSegueWithIdentifier("idLeftSegue", sender: self)
    }
}


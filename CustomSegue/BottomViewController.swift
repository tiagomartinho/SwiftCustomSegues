//
//  BottomViewController.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import UIKit

class BottomViewController: GeneralViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        addSwipeGestureRecognizer(UISwipeGestureRecognizerDirection.Down,action:"showMainViewController")
    }
    
    func showMainViewController() {
        self.performSegueWithIdentifier("idBottomSegueUnwind", sender: self)
    }
}
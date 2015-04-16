//
//  TopViewController.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import UIKit

class TopViewController: GeneralViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        addSwipeGestureRecognizer(UISwipeGestureRecognizerDirection.Up,action:"showMainViewController")
    }
    
    func showMainViewController() {
        self.performSegueWithIdentifier("idTopSegueUnwind", sender: self)
    }
}
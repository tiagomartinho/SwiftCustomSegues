//
//  RightViewController.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import UIKit

class RightViewController: GeneralViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        addSwipeGestureRecognizer(UISwipeGestureRecognizerDirection.Right,action:"showMainViewController")
    }

    func showMainViewController() {
        self.performSegueWithIdentifier("idRightSegueUnwind", sender: self)
    }
}

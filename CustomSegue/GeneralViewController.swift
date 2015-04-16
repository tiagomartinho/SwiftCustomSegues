//
//  GeneralViewController.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import UIKit

class GeneralViewController: UIViewController
{
    func addSwipeGestureRecognizer(direction:UISwipeGestureRecognizerDirection,action:Selector){
        var swipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: action)
        swipeGestureRecognizer.direction = direction
        self.view.addGestureRecognizer(swipeGestureRecognizer)
    }
}
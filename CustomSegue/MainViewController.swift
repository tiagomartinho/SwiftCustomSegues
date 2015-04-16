//
//  ViewController.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import UIKit

class MainViewController: GeneralViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        addSwipeGestureRecognizer(UISwipeGestureRecognizerDirection.Right,action:"showLeftViewController")
        addSwipeGestureRecognizer(UISwipeGestureRecognizerDirection.Left,action:"showRightViewController")
        addSwipeGestureRecognizer(UISwipeGestureRecognizerDirection.Down,action:"showTopViewController")
        addSwipeGestureRecognizer(UISwipeGestureRecognizerDirection.Up,action:"showBottomViewController")
    }
    
    func showLeftViewController() {
        self.performSegueWithIdentifier("idLeftSegue", sender: self)
    }
    
    func showRightViewController() {
        self.performSegueWithIdentifier("idRightSegue", sender: self)
    }
    
    func showBottomViewController() {
        self.performSegueWithIdentifier("idBottomSegue", sender: self)
    }
    
    func showTopViewController() {
        self.performSegueWithIdentifier("idTopSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let customSegue = segue as? LinearSegue {
            if let identifier = customSegue.identifier {
                switch identifier {
                case "idRightSegue":
                    customSegue.direction = Direction.RightToLeft
                case "idLeftSegue":
                    customSegue.direction = Direction.LeftToRight
                case "idBottomSegue":
                    customSegue.direction = Direction.BottomToTop
                case "idTopSegue":
                    customSegue.direction = Direction.TopToBottom
                default: break
                }
            }
        }
    }
    
    @IBAction func showLeftViewController(sender: UIBarButtonItem) {
        showLeftViewController()
    }
    
    @IBAction func showRightViewController(sender: UIBarButtonItem) {
        showRightViewController()
    }
}


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
        addSwipeGestureRecognizer(UISwipeGestureRecognizerDirection.Right,action:"showLeftViewController")
        addSwipeGestureRecognizer(UISwipeGestureRecognizerDirection.Left,action:"showRightViewController")
    }
    
    private func addSwipeGestureRecognizer(direction:UISwipeGestureRecognizerDirection,action:Selector){
        var swipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: action)
        swipeGestureRecognizer.direction = direction
        self.view.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let customSegue = segue as? LinearSegue {
            if let id = customSegue.identifier {
                if id == "idRightSegue" {
                    customSegue.direction = Direction.RightToLeft
                }
                if id == "idLeftSegue" {
                    customSegue.direction = Direction.LeftToRight
                }
            }
        }
    }
    
    @IBAction func showLeftViewController(sender: UIBarButtonItem) {
        showLeftViewController()
    }
    
    func showLeftViewController() {
        self.performSegueWithIdentifier("idLeftSegue", sender: self)
    }
    
    @IBAction func showRightViewController(sender: UIBarButtonItem) {
        showRightViewController()
    }
    
    func showRightViewController() {
        self.performSegueWithIdentifier("idRightSegue", sender: self)
    }
}


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
        addSwipeRightGestureRecognizer()
        addSwipeLeftGestureRecognizer()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let customSegue = segue as? HorizontalSegue {
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
    
    private func addSwipeRightGestureRecognizer(){
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
    
    private func addSwipeLeftGestureRecognizer(){
        var swipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "showRightViewController")
        swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    @IBAction func showRightViewController(sender: UIBarButtonItem) {
        showRightViewController()
    }
    
    func showRightViewController() {
        self.performSegueWithIdentifier("idRightSegue", sender: self)
    }
}


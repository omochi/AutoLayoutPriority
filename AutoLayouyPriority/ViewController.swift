//
//  ViewController.swift
//  AutoLayouyPriority
//
//  Created by omochimetaru on 2018/03/01.
//  Copyright © 2018年 omochimetaru. All rights reserved.

import UIKit

func makeEqualConstraint(_ a: UIView, _ b: UIView, priority: Float) -> NSLayoutConstraint {
    let c = NSLayoutConstraint(item: a, attribute: .width, relatedBy: .equal,
                               toItem: b, attribute: .width,
                               multiplier: 1, constant: 0)
    c.priority = UILayoutPriority(priority)
    return c
}

class ViewController: UIViewController {
    
    @IBOutlet var longView: UIView!
    @IBOutlet var shortView: UIView!
    @IBOutlet var theView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addConstraint(makeEqualConstraint(longView, theView, priority: 999))
        
        let n = 1000
        for _ in 0..<n {
            self.view.addConstraint(makeEqualConstraint(shortView, theView, priority: 998))
        }
    }

}


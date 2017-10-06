//
//  ViewController.swift
//  Fluent-Layout
//
//  Created by Mohammad Azam on 10/4/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let yellowView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(yellowView)
       
        yellowView.constrain()
        .center(in: self.view)
        .setSize(width: 100, height: 100)
        .activate()
        
        yellowView.backgroundColor = UIColor.yellow
    }

}


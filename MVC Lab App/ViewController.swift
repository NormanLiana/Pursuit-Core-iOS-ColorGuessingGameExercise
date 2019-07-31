//
//  ViewController.swift
//  MVC Lab App
//
//  Created by Liana Norman on 7/30/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIView!
    
    @IBAction func generatesRandColor(_ sender: UIButton) {
        let random = RGB()
        background.backgroundColor = random.randomColor()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


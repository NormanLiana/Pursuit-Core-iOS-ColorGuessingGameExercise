//
//  RandomColor.swift
//  MVC Lab App
//
//  Created by Liana Norman on 7/30/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import Foundation
import UIKit

struct RGB {
    var red = CGFloat.random(in: 0.0...1.0)
    var green = CGFloat.random(in: 0.0...1.0)
    var blue = CGFloat.random(in: 0.0...1.0)



func randomColor() -> UIColor {
    return UIColor(red: red,
                   green: green,
                   blue: blue,
                   alpha: 1.0)
}

    func findBiggestNumber() -> RGB {
        
    }
}




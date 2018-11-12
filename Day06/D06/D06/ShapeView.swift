//
//  ShapeView.swift
//  D06
//
//  Created by Kgotego Thabiso MOSIME on 2018/10/10.
//  Copyright © 2018 Kgotego Thabiso MOSIME. All rights reserved.
//

import UIKit

class ShapeView: UIView {

    var size : CGFloat = 100
    var isCircle = false
    init(point: CGPoint, maxwidth: CGFloat, maxheight: CGFloat){
        let y = point.y
        let x = point.x
        
        let random = Int(arc4random_uniform(2))
        switch random {
        case 0 :
            super.init(frame: CGRect(x: x, y: y, width: size, height: size))
        default:
            super.init(frame: CGRect(x: x, y: y, width: size, height: size))
            self.layer.cornerRadius = size/2
            self.isCircle = true
        }
        self.backgroundColor = getRadomColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getRadomColor() -> UIColor {
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }

}

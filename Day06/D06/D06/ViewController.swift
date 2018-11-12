//
//  ViewController.swift
//  D06
//
//  Created by Kgotego Thabiso MOSIME on 2018/10/10.
//  Copyright © 2018 Kgotego Thabiso MOSIME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    var itemBehaviour: UIDynamicItemBehavior!
    

    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let shape = ShapeView(point: sender.location(in: view), maxwidth: self.view.bounds.width, maxheight: self.view.bounds.height)
        self.view.addSubview(shape)
        
        gravity.addItem(shape)
        collision.addItem(shape)
        itemBehaviour.addItem(shape)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [])
        animator.addBehavior(gravity)
        
        
        collision = UICollisionBehavior(items: [])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        itemBehaviour = UIDynamicItemBehavior(items: [])
        itemBehaviour.elasticity = 0.7
        animator.addBehavior(itemBehaviour)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


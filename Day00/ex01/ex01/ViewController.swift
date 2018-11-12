//
//  ViewController.swift
//  ex01
//
//  Created by Keegan KINNEAR on 2018/10/02.
//  Copyright © 2018 Keegan KINNEAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func AgainPlease(_ sender: Any) {
        messageLabel.text = "Again Please"
    }
    
}


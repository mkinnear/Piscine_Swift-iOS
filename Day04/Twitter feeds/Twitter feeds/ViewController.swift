//
//  ViewController.swift
//  Twitter feeds
//
//  Created by Keegan KINNEAR on 2018/10/06.
//  Copyright © 2018 Keegan KINNEAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func Request(_ sender: UIButton)
    {
        Controller.GetInformation() { (res:[String: Any]) in
            print(res)
        }
    }
    
    @IBAction func Post(_ sender: UIButton)
    {
        Controller.PostInformation()
    }
    
}


//
//  Article.swift
//  mkinnear2018_Example
//
//  Created by Keegan KINNEAR on 2018/10/12.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import CoreData

class Article: NSManagedObject {
    
    var title:String = String()
    var content:String = String()
    var language:String = String()
    var image:NSData = NSData()
    var creation_date:NSDate = NSDate()
    var modification_date:NSDate = NSDate()
    
    override var description: String{
        
        var desc:String = (title + "\t" + language + "\n" + creation_date + "\t" + modification_date)
        return desc
    }

}

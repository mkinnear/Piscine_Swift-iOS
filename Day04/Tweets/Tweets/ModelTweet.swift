//
//  ModelTweet.swift
//  Tweets
//
//  Created by Keegan KINNEAR on 2018/10/06.
//  Copyright © 2018 Keegan KINNEAR. All rights reserved.
//

import Foundation

struct Model: CustomStringConvertible
{
    let name:String
    let text:String
    
    var description: String{
        var newString:String = name
        newString += "\n"
        newString += text
        return (newString)
    }
}

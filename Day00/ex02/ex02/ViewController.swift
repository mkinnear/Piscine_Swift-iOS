//
//  ViewController.swift
//  ex02
//
//  Created by Keegan KINNEAR on 2018/10/02.
//  Copyright © 2018 Keegan KINNEAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    var sum:Double = 0
    var operand:String = ""
    var result1:Double = 0;
    var result2:Double = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* This is where we start creating magic
       We will create a function for numbers
       And create a function for operators
    */
 //-----------------------------------------------------------//

    @IBAction func keyPressed(_ sender: UIButton) {
        
        if (DisplayLabel.text == "_")
        {
            DisplayLabel.text! = String(sender.tag - 1)
            sum = Double(DisplayLabel.text!)!
            print (sum)
        }
        else if (Double(DisplayLabel.text!)! >= 0 || Double(DisplayLabel.text!)! <= 0)
        {
            DisplayLabel.text = DisplayLabel.text! + String(sender.tag - 1)
            sum = Double(DisplayLabel.text!)!
            print (sum)
        }
        else if ((operand == "=") || (operand == "+") || (operand == "-") || (operand == "*") || (operand == "/") || (operand == "NEG"))
        {
            print (operand)
        }
    }
    
    @IBAction func Operations(_ sender: UIButton) {
        if (String(sender.tag) == "11")
        {
            if (operand == "")
            {
                operand = "="
                result1 = sum
                sum = 0
                DisplayLabel.text = String(Int(result1))
            }
            else if (operand == "=")
            {
                DisplayLabel.text = String(Int(result1))
                sum = 0
            }
            else{
                if (operand == "+")
                {
                    result2 += sum
                    result1 += result2
                    DisplayLabel.text = String(Int(result1))
                    sum = 0
                }
                if (operand == "-")
                {
                    result2 += sum
                    result1 -= result2
                    DisplayLabel.text = String(Int(result1))
                    sum = 0
                }
                if (operand == "*")
                {
                    result2 += (sum)
                    result1 *= (result2)
                    DisplayLabel.text = String(Int(result1))
                    sum = 0
                }
                if (operand == "/")
                {
                    result2 += sum
                    result1 /= result2
                    DisplayLabel.text = String(result1)
                    sum = 0
                }
                if (operand == "NEG")
                {
                    result2 += (sum)
                    result1 -= (result2)
                    DisplayLabel.text = String(Int(result1))
                    sum = 0
                }
            }
        }
        else if (String(sender.tag) == "12")
        {
            if (operand == "")
            {
                operand = "+"
                result1 = sum
                sum = 0
                DisplayLabel.text = "_"
                print ("-----------------")
                print ("adding")
                print (" ")
                print (Int(result1))
            }
            else{
                operand = "+"
                result2 = sum
                result1 += result2
                sum = 0
                result2 = 0
                DisplayLabel.text = "_"
                print ("-----------------")
                print ("adding")
                print (" ")
                print (Int(result1))
            }
        }
        else if (String(sender.tag) == "13")
        {
            if (operand == "")
            {
                operand = "-"
                result1 = sum
                sum = 0
                DisplayLabel.text = "_"
                print ("-----------------")
                print ("subtracting")
                print (" ")
                print (Int(result1))
            }
            else{
                operand = "-"
                result2 = sum
                result1 -= result2
                result2 = 0
                sum = 0
                DisplayLabel.text = "_"
                print ("-----------------")
                print ("subtracting")
                print (" ")
                print (Int(result1))
            }
        }
        else if (String(sender.tag) == "14")
        {
            if (operand == "")
            {
                operand = "*"
                result1 = sum
                sum = 0
                DisplayLabel.text = "_"
                print ("-----------------")
                print ("multiplying")
                print (" ")
                print (Int(result1))
            }
            else{
                operand = "*"
                result2 = sum
                result1 *= result2
                sum = 0
                result2 = 0
                DisplayLabel.text = "_"
                print ("-----------------")
                print ("multiplying")
                print (" ")
                print (Int(result1))
            }
        }
        else if (String(sender.tag) == "15")
        {
            if (operand == "")
            {
                operand = "/"
                result1 = sum
                sum = 0
                DisplayLabel.text = "_"
                print ("-----------------")
                print ("dividing")
                print (" ")
                print (result1)
            }
            else{
                print (div)
                operand = "/"
                result2 = sum
                result1 /= result2
                result2 = 0
                sum = 0
                DisplayLabel.text = "_"
                print ("-----------------")
                print ("multiplying")
                print (" ")
                print (result1)
            }
        }
        else if (String(sender.tag) == "17")
        {
            if (operand == "")
            {
                sum *= -1
                DisplayLabel.text = "NEG"
                result1 = sum
                print ("-----------------")
                print ("negating")
                print (" ")
                print (Int(result1))
            }
            else
            {
                sum *= -1
                DisplayLabel.text = "NEG"
                result2 += sum
                print ("-----------------")
                print ("negating")
                print (" ")
                print (Int(result1))
            }
        }
        else if (String(sender.tag) == "18")
        {
            if (operand == "")
            {
                sum = 0
                DisplayLabel.text = "_"
            }
            else
            {
                sum = 0
                DisplayLabel.text = "_"
            }
        }
    }
    
}


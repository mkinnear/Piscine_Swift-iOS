//
//  ViewController.swift
//  D7
//
//  Created by Dipuo MAHLAKE on 2018/10/11.
//  Copyright © 2018 Dipuo MAHLAKE. All rights reserved.
//

import UIKit
import ForecastIO
import RecastAI
import DarkSkyKit

class ViewController: UIViewController
{
    var bot : RecastAIClient!
   
    
    let client = DarkSkyClient(apiKey: "6b98c5ef807f09bd58787d29c370a2f3")
    @IBOutlet weak var txtrequest: UITextField!
    
    @IBOutlet weak var display: UILabel!
    @IBAction func butrequest(_ sender: UIButton)
    {
        makerequst()
    }
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        self.bot = RecastAIClient(token: "596aa8bef9ef25fc1af2333db0db8861", language: "en")
        
    }
    
    func makerequst()
    {
        self.bot?.textRequest(txtrequest.text!, successHandler:recastRequestDone, failureHandle:responseError)
    }
    
    func responseError(_ error : Error)
    {
        print(error.localizedDescription)
    }
    
   
        
        // Do any additional setup after loading the view, typically from a nib.
    
    func recastRequestDone(_ response : Response)
    {
        var lat: Double = 0.0
        var long: Double = 0.0
        let location = response.get(entity: "location")
        print(location!)
        print(location!["lat"]!)
        print(location!["lng"]!)
        if let dat = location!["lat"]! as? Double
        {
            lat = dat
        }
        if let lot = location!["lng"]! as? Double
        {
            long = lot
        }
        client.getForecast(latitude: lat, longitude: long, time:Date()) { result in
            switch result
            {
            case.success(let forecast):
                print(forecast.0.currently!.summary!)
                DispatchQueue.main.async
                {
                    self.display.text = forecast.0.currently!.summary!
                }
            case.failure(let error):
                print(error.localizedDescription)
            }
    }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  FirstViewController.swift
//  ex00
//
//  Created by Ntombikayise SIKHOSANA on 2018/10/08.
//  Copyright © 2018 Ntombikayise SIKHOSANA. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FirstViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(-26.204874, 28.040164)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "WeThinkCode_"
        annotation.subtitle = "Come code with us!"
        map.addAnnotation(annotation)
    }

    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let currLocation = locations[0]
        
        let currSpan:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(currLocation.coordinate.latitude, currLocation.coordinate.longitude)
        let currRegion:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, currSpan)
        map.setRegion(currRegion, animated: true)
        
        self.map.showsUserLocation = true
    }
    
    @IBAction func current(_ sender: UIButton) {
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    
    @IBAction func segControl(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        
        if (index == 0){
            map.mapType = MKMapType.standard
        } else if (index == 1){
            map.mapType = MKMapType.satellite
        } else {
            map.mapType = MKMapType.hybrid
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


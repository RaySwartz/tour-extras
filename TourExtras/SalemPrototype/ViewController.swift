//
//  ViewController.swift
//  SalemPrototype
//
//  Created by Raymond Edgar Swartz on 12/18/18.
//  Copyright © 2018 Swartzware. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    var locationMgrDelegate = LocationManagerDelegate()
    
    var currentLocation: CLLocationCoordinate2D?
    //    let locationManager: LocationManager = LocationManager(updateInterval: 2)
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let interests = PointsOfInterest()
        for loc in interests.places {
            monitorRegionAtLocation( loc )      // move to a delegate object?
        }
    }
    
    private let locationManager = CLLocationManager()
    
    //func monitorRegionAtLocation(center: CLLocationCoordinate2D, identifier: String ) {
    func monitorRegionAtLocation(_ place: PointOfInterest) {
        // Make sure the app is authorized.
        //       if CLLocationManager.authorizationStatus() == .authorizedAlways {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {            // this needs checking
            // Make sure region monitoring is supported.
            if CLLocationManager.isMonitoringAvailable(for: CLCircularRegion.self) {
                locationManager.delegate = locationMgrDelegate
                // Register the region.
                let region = CLCircularRegion(center: place.center,
                                              radius: place.radius, identifier: place.label)
                region.notifyOnEntry = true
                region.notifyOnExit = false
                
                locationManager.startMonitoring(for: region)
            }
        }
    }
    
    // notifications handled in app delegate
    
}


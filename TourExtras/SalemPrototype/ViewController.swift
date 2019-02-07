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

    var currentLocation: CLLocationCoordinate2D?
//    let locationManager: LocationManager = LocationManager(updateInterval: 2)

    
     required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let interests = PointsOfInterest()
//        currentLocation = CurrentLocation().currentCoordinate // succeeds
//        if let cl = currentLocation {
//            print("Current location: \(cl)")
//        }
        for loc in interests.places {
            monitorRegionAtLocation( loc )
        }
    }

    private let locationManager = CLLocationManager()

    //func monitorRegionAtLocation(center: CLLocationCoordinate2D, identifier: String ) {
    func monitorRegionAtLocation(_ place: PointOfInterest) {
        // Make sure the app is authorized.
        if CLLocationManager.authorizationStatus() == .authorizedAlways {
            // Make sure region monitoring is supported.
            if CLLocationManager.isMonitoringAvailable(for: CLCircularRegion.self) {
                // Register the region.
//                let maxDistance = locationManager.maximumRegionMonitoringDistance
                let region = CLCircularRegion(center: place.center,
                                              radius: place.radius, identifier: place.label)
                region.notifyOnEntry = true
                region.notifyOnExit = false
                
                locationManager.startMonitoring(for: region)
            }
        }
    }
}


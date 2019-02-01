//
//  CurrentLocation.swift
//  TourExtras
//
//  Created by Raymond Edgar Swartz on 1/3/19.
//  Copyright © 2019 Swartzware. All rights reserved.
//

import Foundation
import CoreLocation

class CurrentLocation : NSObject, CLLocationManagerDelegate {
    
    let homeCoordinate = CLLocationCoordinate2D(latitude: 42.508605, longitude: -70.889498)
    var currentCoordinate : CLLocationCoordinate2D?
    var manager : CLLocationManager
    
    override init() {
        currentCoordinate = homeCoordinate
        manager = CLLocationManager()
        super.init()
        startStandardUpdates()
    }
    
    func startStandardUpdates() {
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        manager.distanceFilter = 50 * 0.30480 // meters
        manager.pausesLocationUpdatesAutomatically = true
        if CLLocationManager.locationServicesEnabled() {
            manager.startUpdatingLocation()
        }

    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lastObject: CLLocation = locations.last!
        
        if lastObject != nil {
         print("last location \(lastObject.coordinate.longitude) ")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        print ("\(newHeading)")
  }
    //    func update() -> CLLocationCoordinate2D {
    //      }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error code \(error)")
    }
}



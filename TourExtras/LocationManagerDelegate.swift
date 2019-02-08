//
//  LocationManagerDelegate.swift
//  TourExtras
//
//  Created by Raymond Edgar Swartz on 2/8/19.
//  Copyright © 2019 Swartzware. All rights reserved.
//

import UIKit
import CoreLocation


class LocationManagerDelegate: NSObject, CLLocationManagerDelegate {
   
    override init() {
    }
    
    func locationManager(_ manager: CLLocationManager,
                         didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .restricted, .denied:
            disableMyLocationBasedFeatures()
            break
            
        case .authorizedWhenInUse:
            enableMyWhenInUseFeatures()
            break
            
        case .notDetermined, .authorizedAlways:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("didExitRegion \(region.identifier)")
    }
    // MARK: CLLocationManagerDelegate
    
    func locationManager(_: CLLocationManager, didFailWithError _: Error) {
        if #available(iOS 9.0, *) {
            // we don't need to call stopUpdatingLocation as we are using requestLocation() on iOS 9 and later
        } else {
            let realLocationManager = CLLocationManager()
            realLocationManager.stopUpdatingLocation()
        }
    }
    
    func locationManager(_: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let location = locations.last {
//            let currentLocation : Location = Location(location)
//        }
        if #available(iOS 9.0, *) {
            // we don't need to call stopUpdatingLocation as we are using requestLocation() on iOS 9 and later
        } else {
            let realLocationManager = CLLocationManager()
            realLocationManager.stopUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        if let region = region as? CLCircularRegion {
            let identifier = region.identifier
            print("triggerTaskAssociatedWithRegionIdentifier(regionID: \(identifier)")
        }
    }
    

    func disableMyLocationBasedFeatures() {
        //
    }
    func enableMyWhenInUseFeatures() {
        //
    }
    

}

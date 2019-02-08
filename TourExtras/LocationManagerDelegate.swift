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
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("didEnterRegion \(region)")
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("didExitRegion \(region)")
    }

    func disableMyLocationBasedFeatures() {
        //
    }
    func enableMyWhenInUseFeatures() {
        //
    }
    

}

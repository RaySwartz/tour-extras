//
//  CurrentLocation.swift
//  TourExtras
//
//  Created by Raymond Edgar Swartz on 1/3/19.
//  Copyright © 2019 Swartzware. All rights reserved.
//

import Foundation
import CoreLocation

class CurrentLocation {
    
    let homeCoordinate = CLLocationCoordinate2D(latitude: 42.508605, longitude: -70.889498)
    var currentCoordinate : CLLocationCoordinate2D
    
    init() {
        currentCoordinate = homeCoordinate
    }
}



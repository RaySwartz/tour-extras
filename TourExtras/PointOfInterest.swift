//
//  PointOfInterest.swift
//  TourExtras
//
//  Created by Raymond Edgar Swartz on 12/19/18.
//  Copyright © 2018 Swartzware. All rights reserved.
//

import Foundation
import CoreLocation

class PointOfInterest {
    
    var label : String
    var center : CLLocationCoordinate2D
    var radius : Double
    var text: String

    init(label: String, center: CLLocationCoordinate2D, radius: Double, text: String = "") {
        self.label = label
        self.center = center
        self.radius = radius
        self.text = text
    }
}

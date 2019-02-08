//
//  PointOfInterest.swift
//  TourExtras
//
//  Created by Raymond Edgar Swartz on 12/19/18.
//  Copyright © 2018 Swartzware. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit

class PointOfInterest {
    
    var label : String
    var center : CLLocationCoordinate2D
    var radius : Double
    var text: String
    var images: [ImageContent]

    // radius in meters
    
    init(label: String, center: CLLocationCoordinate2D, radius: Double, images: [ImageContent], text: String = "") {
        self.label = label
        self.center = center
        self.radius = radius
        self.text = text
        self.images = images
    }
    
    func setImages (images: [ImageContent]) {
        self.images = images
    }
}

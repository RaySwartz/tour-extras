//
//  PointsOfInterest.swift
//  TourExtras
//
//  Created by Raymond Edgar Swartz on 12/19/18.
//  Copyright © 2018 Swartzware. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit

class PointsOfInterest {
    var places = [PointOfInterest]()
    
    init() {
        var ima : UIImage?
        var stuff : ImageContent?
        ima = UIImage(named: "30")
        if let tempi = ima {
            stuff = ImageContent(image: tempi, text: "30 Ocean Ave front")
            if let temps = stuff {
                self.places.append(PointOfInterest(label: "30 Ocean Ave", center: CLLocationCoordinate2D(latitude: 42.508605, longitude: -70.889498), radius: 100, images: [temps]))
            }
        }
        ima = UIImage(named: "4")
        if let tempi = ima {
            stuff = ImageContent(image: tempi, text: "Hocus Pocus House on Ocean Ave")
            if let temps = stuff {
                self.places.append(PointOfInterest(label: "Hocus Pocus House on Ocean Ave", center: CLLocationCoordinate2D(latitude: 42.508767, longitude: -70.887803), radius: 100, images: [temps]))
            }
        
        /*
        ima = UIImage(named: "22")
        if let tempi = ima {
            stuff = ImageContent(image: tempi, text: "")
            if let temps = stuff {
                self.places.append(PointOfInterest(label: "22 Ocean Ave", center: CLLocationCoordinate2D(latitude: 42.508663, longitude: -70.889065), radius: 100, images: [temps]))
            }
            ima = UIImage(named: "21")
            if let tempi = ima {
                stuff = ImageContent(image: tempi, text: "")
                if let temps = stuff {
                    self.places.append(PointOfInterest(label: "21 Ocean Ave", center: CLLocationCoordinate2D(latitude: 42.508432, longitude: -70.888915), radius: 100, images: [temps]))
                }
            }
 */
            /*
             stuff = ImageContent(image: UIImage(named: "16.png")!, text: "")
             self.places.append(PointOfInterest(label: "16 Ocean Ave", center: CLLocationCoordinate2D(latitude: 42.508696, longitude: -70.888627), radius: 100, images: [stuff]))
             stuff = ImageContent(image: UIImage(named: "12.png")!, text: "")
             self.places.append(PointOfInterest(label: "12 Ocean Ave", center: CLLocationCoordinate2D(latitude: 42.508722, longitude: -70.888417), radius: 100, images: [stuff]))
             stuff = ImageContent(image: UIImage(named: "11.png")!, text: "")
             self.places.append(PointOfInterest(label: "11 Ocean Ave", center: CLLocationCoordinate2D(latitude: 42.508498, longitude: -70.888320), radius: 100, images: [stuff]))
             stuff = ImageContent(image: UIImage(named: "4.png")!, text: "")
             self.places.append(PointOfInterest(label: "Hocus Pocus House on Ocean Ave", center: CLLocationCoordinate2D(latitude: 42.508767, longitude: -70.887803), radius: 100, images: [stuff]))
             */
        }
    }
}

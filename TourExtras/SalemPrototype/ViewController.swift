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
    
     required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let _ = PointsOfInterest()
//        currentLocation = CurrentLocation().currentCoordinate // succeeds
//        if let cl = currentLocation {
//            print("Current location: \(cl)")
//        }
    }


}


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

     required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let _ = PointsOfInterest()
        var currentLocation = CurrentLocation().currentCoordinate
        var x: Int
        
    }


}


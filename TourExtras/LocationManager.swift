//
//  LocationManager.swift
//  CriticalMaps
//
//  Created by Leonard Thomas on 12/17/18.
//

import CoreLocation

class LocationManager: NSObject, LocationProvider {
    
    var realLocationManager : CLLocationManager = CLLocationManager()
    let theDelegate : CLLocationManagerDelegate = LocationManagerDelegate()
    
    static var accessPermission: LocationProviderPermission {
 //       if Preferences.gpsEnabled {
            switch CLLocationManager.authorizationStatus() {
            case .authorizedAlways,
                 .authorizedWhenInUse:
                return .authorized
            case .notDetermined:
                return .unkown
            case .restricted,
                 .denied:
                return .denied
            }
//        } else {
//            return .denied
//        }
    }

    private var didSetInitialLocation = false

    private var _currentLocation: Location?
    private(set)
    var currentLocation: Location? {
        set {
            _currentLocation = newValue
            guard didSetInitialLocation == false else {
                return
            }
            if let location = currentLocation {
                didSetInitialLocation = true
                NotificationCenter.default.post(name: NSNotification.Name("initialGpsDataReceived"), object: location)
                print("new location detected \(location)")
            }
        }
        get {
            guard type(of: self).accessPermission == .authorized else {
                return nil
            }
            return _currentLocation
        }
    }


    init(updateInterval: TimeInterval = 11) {
        super.init()
        configureLocationManager()
        configureTimer(with: updateInterval)
    }

    func configureLocationManager() {
        // this was causing assertion failure
//        if #available(iOS 9.0, *) {
//            locationManager.allowsBackgroundLocationUpdates = true
//        }
        realLocationManager.requestWhenInUseAuthorization()
        realLocationManager.activityType = .otherNavigation
        realLocationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        realLocationManager.delegate = theDelegate
        realLocationManager.startUpdatingLocation()
    }

    private func configureTimer(with interval: TimeInterval) {
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(timerDidUpdate(timer:)), userInfo: nil, repeats: true)
    }

    @objc private func timerDidUpdate(timer _: Timer) {
        requestLocation()
    }

    func requestLocation() {
        guard type(of: self).accessPermission == .authorized else { return }
        if #available(iOS 9.0, *) {
            realLocationManager.requestLocation()
        } else {
            realLocationManager.startUpdatingLocation()
        }
    }

 }

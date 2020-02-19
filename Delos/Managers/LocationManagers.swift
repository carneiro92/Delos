//
//  LocationManagers.swift
//  Delos
//
//  Created by Carneiro Jorge on 18/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation
import MapKit
import SwiftUI

class LocationManagers : NSObject {
    @Binding var position: CLLocationCoordinate2D
    private let locationManager = CLLocationManager()
    var location : CLLocation? = nil
    
    init(userPosition: Binding<CLLocationCoordinate2D>) {
        self._position = userPosition
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }
}
extension LocationManagers : CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        position = locations[0].coordinate
    }
}

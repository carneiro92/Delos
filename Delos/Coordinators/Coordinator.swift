//
//  Coordinator.swift
//  Delos
//
//  Created by Carneiro Jorge on 18/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//
import MapKit
import Foundation


final class Coordinator : NSObject , MKMapViewDelegate {
    var control : MapView
    init(_ control : MapView) {
        self.control = control
    }
    var posMap : Bool = false
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
       let region =  MKCoordinateRegion(center: userLocation.coordinate, span: span)
        if posMap == false {
            mapView.setRegion(region, animated: true)
            posMap = true
        }
        
        
    }
}

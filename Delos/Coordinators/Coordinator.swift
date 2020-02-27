//
//  Coordinator.swift
//  Delos
//
//  Created by Carneiro Jorge on 18/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//
import MapKit
import SwiftUI
import Foundation


final class Coordinator : NSObject , MKMapViewDelegate {
    var control : MapView
    init(_ control : MapView) {
        self.control = control
    }
    var posMap : Bool = false
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
       let region =  MKCoordinateRegion(center: userLocation.coordinate, span: span)
        if posMap == false {
            mapView.setRegion(region, animated: true)
            posMap = true
        }
        
        
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // 1
        guard annotation is LandMarks else { return nil }

        // 2
        let identifier = "LandMarks"

        // 3
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)

        if annotationView == nil {
            //4
            let marker = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            marker.glyphImage = UIImage(systemName: "music.house.fill")
            annotationView = marker
            // 5
            let btn = UIButton(type: .close)
            annotationView?.rightCalloutAccessoryView = btn
        } else {
            // 6
            annotationView?.annotation = annotation
        }
        annotationView?.displayPriority = .required

        return annotationView
    }
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        guard let landMark = view.annotation as? LandMarks else { return }
                
        control.listeSalles.forEach { sale in
            if sale.id == landMark.id {
                withAnimation {
                    control.selectedPlace = sale
                    control.modalPresent = true
                }
            }
        }
 
    }
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        control.selectedPlace = nil
        control.modalPresent = false
    }
    
    
    
}

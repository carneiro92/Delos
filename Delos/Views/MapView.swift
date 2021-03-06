//
//  MapView.swift
//  Delos
//
//  Created by Carneiro Jorge on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    @Binding var userPosition: CLLocationCoordinate2D
    @Binding var listeSalles: [StructSalle]
    @Binding var selectedPlace: StructSalle?
    @Binding var modalPresent: Bool
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        
        return map
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIView(_ map: MKMapView, context: UIViewRepresentableContext<MapView>) {
        for sale in listeSalles {
            let landMark = LandMarks(id: sale.id ,title: sale.nom, subtitle: sale.ville, coordinate: CLLocationCoordinate2D(latitude: sale.coordLat, longitude: sale.coordLong), info: sale.description)
            map.addAnnotation(landMark)
        }
    }
    
//    struct MapView_Previews: PreviewProvider {
//        static var previews: some View {
//            MapView(listeSalles: [], showingPlaceDetails: .constant(false))
//        }
//    }
}

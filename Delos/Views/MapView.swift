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
    var userPosition: CLLocationCoordinate2D = CLLocationCoordinate2D()
    @State var list: [StructSalle] = []
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        for sale in list {
            let landMark : LandMarks
            landMark.coordinate.latitude = sale
            map.
        }
        return map
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
    }
    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }
}

//
//  MapDetailsVue.swift
//  Delos
//
//  Created by Carneiro Jorge on 25/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI
import MapKit
import PartialSheet
import Foundation

struct MapDetailsVue: View {
    @State private var selectedPlace: StructSalle?
    @State private var showingPlaceDetails = false
    @State private var modalPresented = false
    @State var list: [StructSalle] = []
    @State var userPosition: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 45, longitude: 4)
    private var locationManager = LocationManagers(userPosition: .constant(CLLocationCoordinate2D()))
    var body: some View {
        ZStack{
            MapView(userPosition: $userPosition, listeSalles: $list, selectedPlace: $selectedPlace, modalPresent: $modalPresented)
                .font(.headline)
                .onAppear {
                    getSalles { salles in
                        self.list = salles
                    }
                }
        }
        .partialSheet(presented: $modalPresented) {
            VStack {
                Group {
                    HStack{
                        Spacer()
                        Text(self.selectedPlace?.nom ?? "")
                            .font(.subheadline)
                        Spacer()
                        Button(action: {self.showingPlaceDetails.toggle()}) {
                            if self.showingPlaceDetails == false{
                                Image(systemName: "plus.circle.fill")
                            } else {
                                Image(systemName: "x.circle.fill")
                            }
                        }
                        .padding()
                    }
                }
                .frame(height: 50)
                if self.showingPlaceDetails && self.selectedPlace != nil {
                    
                    SalleListeDetailView(item: self.selectedPlace!)
                }
            }
        }
    }
}
struct MapDetailsVue_Previews: PreviewProvider {
    static var previews: some View {
        MapDetailsVue()
    }
}

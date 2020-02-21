//
//  ContentView.swift
//  Delos
//
//  Created by Carneiro Jorge on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var list: [StructSalle] = []
    @State var userPosition: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 45, longitude: 4)
    private var locationManager = LocationManagers(userPosition: .constant(CLLocationCoordinate2D()))
    var body: some View {
         TabView {
            MapView(userPosition: userPosition, listeSalles: list)
                .tabItem {
                    Image(systemName: "house")
                    Text("Accueil")
            }
            FavorisView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favoris")
            }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
            }
        }
        .font(.headline)
        .onAppear {
            getSalles { salles in
                self.list = salles
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

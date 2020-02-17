//
//  ContentView.swift
//  Delos
//
//  Created by Carneiro Jorge on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("map")
                .tabItem {
                    Image(systemName: "house")
                    Text("Accueil")
                }
            FavorisView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favoris")
                }
            Text("profile")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  DetailView.swift
//  Delos
//
//  Created by Joachim Alencon on 19/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct SalleListeDetailView: View {
    
    var item: StructSalle
    
    var body: some View {
        ScrollView {
            VStack {
                Text(item.nom)
                Image(item.image).resizable().frame(width:120, height: 120)
                Spacer()
                Text(item.description)
                Spacer()
                Text("Adresse :" + item.adresse)
                Text("         " + item.ville)
                Spacer()
                Button(action: {
                    ReservationView(salle: self.item)
                }) {
                    Text("reservation")
                        .foregroundColor(.blue)
                }
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.blue, lineWidth: 2))
            }
        }
    }
}

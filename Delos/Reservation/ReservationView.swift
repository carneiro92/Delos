//
//  ReservationView.swift
//  Delos
//
//  Created by Damien Cesar on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI
import Firebase



struct ReservationView: View {
    var salle: StructSalle
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    @State var nombreMusiciens = 0
    @State var dateResa = Date()
    var body: some View {
        VStack{
            Text("Réservation")
                .font(.title)
            Divider()
            HStack{
                Stepper("Nombre de musiciens:\t \(nombreMusiciens)", value: $nombreMusiciens, in: 0...salle.musiciensMax)
            }.padding()
            Divider()
            HStack{
                DatePicker(selection: $dateResa,in: Date()..., displayedComponents: .date){
                    Text("Date")
                }
                
            }.padding()
            
            Text("Salle réserver pour \(nombreMusiciens) musiciens le \(dateResa, formatter: dateFormatter)")
            
            HStack{
                VStack{
                    Text("\(salle.description)")
                }.padding()
                Divider()
                VStack{
                    Text("\(salle.prix)€").font(.title)
                    
                }.padding()
            }
            .frame(width:300, height: 200)
            .border(Color.black)
            
            HStack{
                NavigationLink(destination: ReservationRecapView(salle: self.salle)){
                    Text("Réserver")
                        .foregroundColor(.blue)
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, lineWidth: 2))
                }
            }
        }.padding(.top, -50)
        
    }
}

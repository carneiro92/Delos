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
    @Binding var isShow: Bool
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    @State var nombreMusiciens = 1
    @State var dateResa = Date()
    var body: some View {
        NavigationView{
        VStack{
            VStack{
                Text("Réservation")
                    .font(.title)
                Divider()
                HStack{
                    Stepper("Nombre de musiciens:\t \(nombreMusiciens)", value: $nombreMusiciens, in: 1...salle.musiciensMax)
                }
                .padding()
                
                
                Divider()
                HStack{
                    DatePicker(selection: $dateResa,in: Date()...Date().addingTimeInterval(604800), displayedComponents: .date){
                        Text("Date")
                    }
                    
                }.padding()
                
                Text("Salle réserver pour \(nombreMusiciens) musiciens le \(dateResa, formatter: dateFormatter)")
                
                HStack{
                    VStack{
                        Text("\(salle.description)").font(.body).multilineTextAlignment(.leading)
                            .frame(maxHeight: .infinity)
                    }.padding()
                    Divider()
                    VStack{
                        Text("\(salle.prix)€").font(.body)
                        
                    }.padding()
                }
                .frame(width:300, height: 200)
                
                HStack{
                    NavigationLink(destination: ReservationRecapView(salle: self.salle, isShow: self.$isShow)){
                        Text("Réserver")
                            .frame(width: 150, height: 30)
                            .padding(5)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                    }
                }
            }.padding(.top, -50)
            
        }
    }
}
}

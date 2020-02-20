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
            Spacer()
            Divider()
            HStack{
                Stepper("Nombre de musiciens:\t \(nombreMusiciens)", value: $nombreMusiciens, in: 0...15)
            }.padding()
            Divider()
            HStack{
                DatePicker(selection: $dateResa,in: Date()..., displayedComponents: .date){
                    Text("Date")
                }
                
            }.padding()
            Spacer()
            
            Text("Salle réserver pour \(nombreMusiciens) musiciens le \(dateResa, formatter: dateFormatter)")
            
            HStack{
                VStack{
                    Text("Text")
                }.padding()
                Divider()
                VStack{
                    Text("Text")
                    
                }.padding()
            }.frame(width:300, height: 200)
                .border(Color.black)
            HStack{
                Button("Réserver", action: {
                }).frame(width: 250, height: 50)
                    .background(Color.green)
                    .cornerRadius(20)
                    .foregroundColor(.white)
            }
        }
    }
}


struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}

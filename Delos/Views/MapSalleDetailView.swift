//
//  DetailView.swift
//  Delos
//
//  Created by Joachim Alencon on 19/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct MapSalleDetailView: View {
    
    var item: StructSalle
    @State var isShow: Bool = false
    
    var body: some View {
        VStack{
            
            Image(item.image)
                .resizable()
                .frame(height: 200)
            
            VStack(alignment: .leading){
                HStack{
                    Text("\(item.prix)€").padding()
                    Spacer()
                    HStack{
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star")
                        
                    }
                    Spacer()
                    Text("à 2km").padding()
                }
                
                HStack{
                    Spacer().frame(width: 15)
                    VStack(alignment: .leading){
                        
                        Text(item.description)
                        Spacer().frame(height: 15)
                        Text("Adresse :")
                        Text(item.adresse)
                            .font(.headline).bold()
                        
                        Text(item.ville)
                            .font(.headline).bold()
                    }
                }
            }
            
            VStack{
                Spacer().frame(height: 25)
                Button(action:{
                    self.isShow.toggle()
                }){
                    Text("Réservation")
                }.sheet(isPresented: $isShow){
                    ReservationView(salle: self.item, isShow: self.$isShow )
                }
                .frame(width: 150, height: 30)
                .padding(5)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(20)
                //                NavigationLink(destination: ReservationView(salle: self.item)){
                //                    Text("Réservation")
                //
                //                }
            }
            Spacer()
        }
    }
}

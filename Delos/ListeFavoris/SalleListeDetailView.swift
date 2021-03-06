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
    @State var isShow: Bool = false
    
    var body: some View {
        VStack{
            Text(item.nom)
                .font(.headline).bold()
            
            Image(item.image)
                .resizable()
                .frame(height: 200)
            
            VStack(alignment: .leading){
                HStack{
                    Text("\(item.prix)€").padding()
                    Spacer()
                    Text("*****")
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
            
            Spacer()
            VStack{
                Spacer()
                Button(action:{
                    self.isShow.toggle()
                }){
                    Text("Réservation")
                }.sheet(isPresented: $isShow){
                    ReservationView(salle: self.item, isShow: self.$isShow )
                }
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

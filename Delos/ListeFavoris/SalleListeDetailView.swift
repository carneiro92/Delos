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
                .padding(3)
                .border(Color.black, width: 3)
            
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
                    VStack{
                        ScrollView{
                            Text(item.description).frame(maxHeight: .infinity).padding(.trailing).multilineTextAlignment(.leading)
                            Spacer().frame(height: 15)
                            VStack{
                                HStack{
                                    Text("Adresse :").multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                }
                                HStack{
                                    Text(item.adresse)
                                        .font(.headline).bold()
                                    Text(item.ville)
                                        .font(.headline).bold()
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
            
            //            Spacer()
            VStack{
                //                Spacer()
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
            Spacer().frame(height: 30)
        }
    }
}

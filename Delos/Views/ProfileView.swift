//
//  ProfileView.swift
//  Delos
//
//  Created by Carneiro Jorge on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @State var listResa: [ReservationData] = []
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "person.circle").resizable()
            }.frame(width: 150, height: 150)
            VStack{
                Text("Nom")
                Text("Prénom")
                Text("Email")
                Text("Tel")
            }
            HStack{
                Text("Réservation a venir :").font(.title)
            }
            VStack {
                List(listResa) { item in
                    Text("Test")
                }
            }.frame(height: 150)
        }
                .onAppear {
                    GetReservationUser() { resas in
                        self.listResa = resas
                    }
                }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

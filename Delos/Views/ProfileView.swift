//
//  ProfileView.swift
//  Delos
//
//  Created by Carneiro Jorge on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    Image(systemName: "person.circle").resizable()
                }.frame(width: 150, height: 150)
                VStack{
                    Text("Damien")
                    Text("Cesar")
                    Text("0658131557")
                    Text("damien.cesar.dc@gmail.com")
                    
                    
                }
                Spacer()
                HStack{
                    Text("Réservation a venir :").font(.title)
                }
                Spacer()
            }
            
        }
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

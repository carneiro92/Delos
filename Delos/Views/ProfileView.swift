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
                    Image("profile").resizable()
                }.frame(width: 150, height: 150)
                .cornerRadius(20)
                VStack{
                    Text("Jean")
                    Text("Marc")
                    Text("06354231")
                    Text("jean.marc@gmail.com")
                    
                    
                }
                Spacer().frame(height:50)
                VStack{
                    Text("Réservation a venir :").font(.title)
                    
                    List{
                        HStack{
                            Image(systemName: "calendar")
                            Spacer()
                            Text("Prochaine réservation le 3/3/20 à La Brestoise")}.padding()
                            .font(.body)
                        
                        HStack{
                        Image(systemName: "calendar")
                        Spacer()
                        Text("Prochaine réservation le 12/3/20 à La Brestoise")}.padding()
                        .font(.body)
                        
                        HStack{
                        Image(systemName: "calendar")
                        Spacer()
                        Text("Prochaine réservation le 25/3/20 à La Brestoise")}.padding()
                        .font(.body)
                    }
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

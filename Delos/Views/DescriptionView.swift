//
//  DescriptionView.swift
//  Delos
//
//  Created by Maxime Vergoz on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct Box {
    var id: Int
    let title, imageUrl: String
}


struct DescriptionView: View {
    var body: some View {
        NavigationView{
            
            VStack{
                Image("salle1")
                    .resizable()
                    .frame(height: 200)
                   
                HStack{
                    Text("50€/j").padding()
                    Spacer()
                    Text("Note")
                    Spacer()
                    Text("à 2km").padding()
                    
                                }
                VStack{
                    Text(" \n Ce lieu se situe au 13 avenue des frères lumières et posséde un espace de 45m². \n \n Voici la liste d'équipements mis à votre disposition. \n \n -Clime \n -Wi Fi \n -Batterie Pearl Roadshow Fusion Red Wine \n -Amplificateur Marshall MG50GFX Gold 50W \n -Frigo " )
                        .font(.headline).bold()
                    
                        }
                    Spacer()
                
                Button(action: {
                    print("Button pressed !")
                }) {
                    Text("Réserver")
                    .fontWeight(.bold)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.red, lineWidth: 5)                    )
                    
                }
                
                
                
                Spacer()
                    .navigationBarTitle(Text("Détails"))
                
                }
                
                
            }
    }

}


struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}



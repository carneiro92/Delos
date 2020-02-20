//
//  ReservationRecapView.swift
//  Delos
//
//  Created by Damien Cesar on 20/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct ReservationRecapView: View {
    @State var carteProprio: String = ""
    @State var carteNum: String = ""
    @State var carteExpDate: String = ""
    @State var carteCCV:String = ""
    @State var adresse:String = ""
    @State var ville: String = ""
    @State var region: String = ""
    @State var codePostal: String = ""
    @State var pays: String = ""
    var body: some View {
        VStack{
            Text("Paiement").font(.title)
            Form{
                Text("Infos Carte").font(.title)
                TextField("Nom/Prénom propriétaire carte", text: $carteProprio)
                TextField("Numéro de carte", text: $carteNum)
                HStack{
                    TextField("Date d'expiration", text: $carteExpDate)
                    Divider()
                    TextField("CCV", text: $carteCCV)
                }
            }.padding(.top, 50)
            Form{
                Text("Adresse de facturation").font(.title)
                TextField("Adresse", text: $adresse)
                TextField("Ville", text: $ville)
                HStack{
                    TextField("Région", text: $region)
                    Divider()
                    TextField("Code postal", text: $codePostal)
                }
                TextField("Pays", text: $pays)
            }.padding(.top, -100)
            Button("Payer",action: {
                
            }).frame(width: 250, height: 50)
                .background(Color.green)
            .cornerRadius(20)
                .foregroundColor(.white)
        }
    }
}

struct ReservationRecapView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationRecapView()
    }
}

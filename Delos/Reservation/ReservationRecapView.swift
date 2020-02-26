//
//  ReservationRecapView.swift
//  Delos
//
//  Created by Damien Cesar on 20/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct ReservationRecapView: View {
    var salle: StructSalle
    @State var carteProprio: String = ""
    @State var carteNum: String = ""
    @State var carteExpDate: String = ""
    @State var carteCCV:String = ""
    @State var adresse:String = ""
    @State var ville: String = ""
    @State var region: String = ""
    @State var codePostal: String = ""
    @State var pays: String = ""
    @State var isReserved: Bool = false
    @State var isActive: Bool = false
    @State var isShowed: Bool = false
    @Binding var isShow: Bool

    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack{
            Text("Paiement").font(.title)
            Form{
                Section(header: Text("Infos Carte")){
                    TextField("Nom/Prénom propriétaire carte", text: $carteProprio)
                    TextField("Numéro de carte", text: $carteNum)
                    HStack{
                        TextField("Date d'expiration", text: $carteExpDate)
                        Divider()
                        TextField("CCV", text: $carteCCV)
                    }
                }
                Section(header: Text("Adresse de facturation")){
                    
                    TextField("Adresse", text: $adresse)
                    TextField("Ville", text: $ville)
                    HStack{
                        TextField("Région", text: $region)
                        Divider()
                        TextField("Code postal", text: $codePostal)
                    }
                    TextField("Pays", text: $pays)
                }
            }
            Button("Payer",action: {
                self.isReserved.toggle()
                SendReservation(IsReserved: self.isReserved, CarteProprio: self.carteProprio, CarteNum: self.carteNum, Adresse: self.adresse, Ville: self.ville)
                self.isShowed.toggle()
                self.isShow.toggle()
                self.presentation.wrappedValue.dismiss()
            }).padding(5)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
                .alert(isPresented: $isShowed) {
                    Alert(title: Text("Merci"), message: Text("Votre réservation a bien été prise en charge."), dismissButton: .default(Text("Compris")))
                }
            
            Spacer()
            
        }.padding(.top, -50)
    }
}


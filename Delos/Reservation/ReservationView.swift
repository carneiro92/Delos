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
   @State var firstName = ""
   @State var lastName = ""
   @State var age =  ""
   @State var mail = ""
   @State var phoneNumber = ""
    @State private var showingAlert = false
   var body: some View {
        VStack{
            Form{
                TextField("Nom", text: $lastName)
                TextField("Prénom", text: $firstName)
                TextField("Âge", text: $age)
                TextField("Mail", text: $mail)
                TextField("Numéro de téléphone", text: $phoneNumber)
            }
            Button("Charger", action: {
                SendUser(Firstname: self.firstName, LastName: self.lastName, PhoneNumber: self.phoneNumber, Mail: self.mail, Age: self.age)
                GetUser()

            })
    }
}


struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}
}

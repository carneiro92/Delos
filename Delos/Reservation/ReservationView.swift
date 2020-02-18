//
//  ReservationView.swift
//  Delos
//
//  Created by Damien Cesar on 17/02/2020.
//  Copyright ©️ 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI
import Firebase

struct ReservationView: View {
   @State var firstName = ""
   @State var lastName = ""
   @State var age =  ""
   @State var mail = ""
   @State var phoneNumber = ""
    @State var id = 0
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
            Button("Liste",action: {
                print(GetUser())
            })
            
            Button("Charger", action: {
                SendUser(Firstname: self.firstName, LastName: self.lastName, PhoneNumber: self.phoneNumber, Mail: self.mail, Age: self.age, ID: self.id)
                self.lastName = ""
                self.firstName = ""
                self.phoneNumber = ""
                self.mail = ""
                self.age = ""
                self.showingAlert.toggle()
                

            }).alert(isPresented: $showingAlert){
                Alert(title: Text("Merci"), message: Text("Merci pour votre inscription"), dismissButton: .default(Text("Compris")))
            }
    }
}


struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}
}

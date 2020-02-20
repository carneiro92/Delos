//
//  SendUserService.swift
//  Delos
//
//  Created by Damien Cesar on 18/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation
import Firebase

public struct SendDataUser:Codable {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let mail: String
    let age: String
    
    
}

public struct SendDataReservation:Codable {
    let isReserved: Bool
    let carteProprio: String
    let carteNum: String
    let adresse: String
    let ville: String
}


let db = Firestore.firestore()


func SendUser(Firstname: String, LastName: String, PhoneNumber: String, Mail: String, Age: String){
    let user = SendDataUser(firstName: Firstname, lastName: LastName, phoneNumber: PhoneNumber, mail: Mail, age: Age)
    do{
        try db.collection("User").document().setData(user.asDictionary())
    } catch let error{
        print("Erreur d'ajout de données: \(error)")
    }
}

func SendReservation(IsReserved: Bool, CarteProprio: String, CarteNum: String, Adresse: String, Ville: String){
    let reservation = SendDataReservation(isReserved: IsReserved, carteProprio: CarteProprio, carteNum: CarteNum, adresse: Adresse, ville: Ville)
    do{
        try db.collection("Reservation").document().setData(reservation.asDictionary())
    }catch let error{
        print("Erreur d'ajout de données: \(error)")
    }
}

//
//  SendUserService.swift
//  Delos
//
//  Created by Damien Cesar on 18/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation
import Firebase

public struct User: Codable {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let mail: String
    let age: String
    let id: Int

    
}


let db = Firestore.firestore()

func SendUser(Firstname: String, LastName: String, PhoneNumber: String, Mail: String, Age: String, ID: Int){
    let user = User(firstName: Firstname, lastName: LastName, phoneNumber: PhoneNumber, mail: Mail, age: Age, id: ID)
    do{
        try db.collection("User").document().setData(user.asDictionary())
    } catch let error{
        print("Erreur d'ajout de données: \(error)")
    }
}

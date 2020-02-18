//
//  GetUserService.swift
//  Delos
//
//  Created by Damien CESAR on 18/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation
import Firebase

let docRef = db.collection("User")

func GetUser() -> Any{
    var infos: Any = []
 db.collection("User").getDocuments() { (querySnapshot, err) in
     if let err = err {
         print("Error getting documents: \(err)")
     } else {
         for document in querySnapshot!.documents {
            infos = document.data()
            print(infos)
            
         }
     }
 }
    return infos
}



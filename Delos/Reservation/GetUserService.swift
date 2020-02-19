//
//  GetUserService.swift
//  Delos
//
//  Created by Damien Cesar on 18/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation
import Firebase


var firstName: String = ""
var lastName: String = ""
var phoneNumber: String = ""
var mail: String = ""
var age: String = ""

let docRef = db.collection("User")
func GetUser(){
    db.collection("User").getDocuments{ (querySnapshot, err) in
        if let err = err {
            print("Error getting documents: \(err)")
        } else{
            for document in querySnapshot!.documents {
                print("\(document.data())")
                }
            }
        }
    }







//
//  GetUserService.swift
//  Delos
//
//  Created by Damien Cesar on 18/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation
import Firebase


struct UserData:Identifiable, Decodable{
    var id: String = ""
    var firstName: String
    var mail: String
    var lastName: String
    
    
}


struct ReservationData:Identifiable,Codable {
    var id  = UUID()
    let isReserved: Bool
    let carteProprio: String
    let carteNum: String
    let adresse: String
    let ville: String
}




let docRefUser = db.collection("User")
let docRefResa = db.collection("Reservations")



func GetUserData(completion: @escaping ([UserData]) -> Void ){
    docRefUser.getDocuments{(snapshot, _)in
        let documents = snapshot!.documents
        var listUsers: [UserData] = []
        documents.forEach{ document in
            let infoUser: UserData = try! document.decoded()
            listUsers.append(infoUser)
        }
        completion(listUsers)
    }
}

func GetOneUserData(completion: @escaping ([UserData]) -> Void){
    docRefUser.whereField("id", isEqualTo: "1").getDocuments{(snapshot, _)in
        let documents = snapshot!.documents
        var userData: [UserData] = []
        documents.forEach{document in
            let infoUser: UserData = try! document.decoded()
            userData.append(infoUser)
        }
        completion(userData)
    }
}

func GetOneSalle(completion: @escaping ([StructSalle]) -> Void){
    docRefSalles.whereField("id", isEqualTo: "1").getDocuments{(snapshot, _)in
        let documents = snapshot!.documents
        var salleData: [StructSalle] = []
        documents.forEach{document in
            let infoSalle: StructSalle = try! document.decoded()
            salleData.append(infoSalle)
        }
        completion(salleData)
    }
}

func GetReservationUser(completion: @escaping ([ReservationData]) -> Void) {
    docRefResa.whereField("id", isEqualTo: "1").getDocuments{(snapshot, _)in
        let documents = snapshot!.documents
        var reservationData: [ReservationData] = []
        documents.forEach{document in
            let infoReservation: ReservationData = try! document.decoded()
            reservationData.append(infoReservation)
        }
        completion(reservationData)
    }
}






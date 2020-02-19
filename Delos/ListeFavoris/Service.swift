//
//  Service.swift
//  Delos
//
//  Created by Joachim Alencon on 19/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation
import Firebase

let docRefSalles = db.collection("Salles")

func getSalles(completion: @escaping ([StructSalle]) -> Void) {
    docRefSalles.getDocuments { (snapshot, err) in
        if let err = err {
            print("Error getting documents: \(err)")
            completion([])
        } else{
            let documents = snapshot!.documents
            
            var listeSalles: [StructSalle] = []
            documents.forEach { document in
                let salle: StructSalle = try! document.decoded()
                listeSalles.append(salle)
            }
            completion(listeSalles)
        }
    }
}

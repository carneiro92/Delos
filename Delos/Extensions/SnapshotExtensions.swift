//
//  SnapshotExtensions.swift
//  Delos
//
//  Created by Damien Cesar on 19/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation
import FirebaseFirestore

extension QueryDocumentSnapshot {
    func decoded<Type: Decodable>() throws -> Type {
        
        let jsonData = try JSONSerialization.data(withJSONObject: data(), options: [])
        let object = try JSONDecoder().decode(Type.self, from: jsonData)
        return object
    }
}

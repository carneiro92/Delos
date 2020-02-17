//
//  ListeElement.swift
//  Delos
//
//  Created by Joachim Alencon on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation

struct StructElement: Identifiable {
    var id = UUID()
    var image: String
    var salleDescription: String
    var sallePrix: Int
}

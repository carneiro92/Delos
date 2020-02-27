//
//  StructSalle.swift
//  Delos
//
//  Created by Joachim Alencon on 19/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation

struct StructSalle: Identifiable, Decodable {
    var id: String = ""
    var image: String
    var description: String
    var prix: Int
    var nom: String
    var ville: String
    var adresse: String
    var manger: Bool
    var fumer: Bool
    var musiciensMax: Int
    var coordLong: Double
    var coordLat: Double
    var favoris: Bool
}

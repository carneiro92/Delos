//
//  CodableAsDictionary.swift
//  Delos
//
//  Created by Damien Cesar on 18/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import Foundation
import Firebase

extension Encodable {
  func asDictionary() throws -> [String: Any] {
    let data = try JSONEncoder().encode(self)
    guard let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
      throw NSError()
    }
    print("Donnée envoyé \(dictionary)")
    return dictionary
  }
}



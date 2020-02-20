//
//  LandMarksManager.swift
//  Delos
//
//  Created by Carneiro Jorge on 20/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import MapKit
import UIKit

class LandMarks: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    var info: String

    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.info = info
    }
}

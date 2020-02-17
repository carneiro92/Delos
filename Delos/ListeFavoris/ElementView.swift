//
//  ElementView.swift
//  Delos
//
//  Created by Joachim Alencon on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct ElementView: View {
    var item: StructElement
        
        var body: some View {
            VStack{ Image(item.image).resizable().renderingMode(.original).aspectRatio(contentMode: .fit).frame(width: 80, height: 80)
                Text(item.salleDescription)
            }
        }
    }

//
//  ElementView.swift
//  Delos
//
//  Created by Joachim Alencon on 19/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct ElementView: View {
    
    var item: StructSalle
        
        var body: some View {
            VStack{
                HStack{ Image(item.image).resizable().renderingMode(.original).aspectRatio(contentMode: .fit).frame(width: 80, height: 80)
                Spacer().frame(width: 25)
                    VStack(alignment: .leading){
                        Text(item.nom)
                        Text(item.ville + " - " + String(item.prix) + "€")
                    }
                }
            }
        }
    }

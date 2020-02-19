//
//  DetailView.swift
//  Delos
//
//  Created by Joachim Alencon on 19/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var item: StructSalle
       
       var body: some View {
           ScrollView {
               VStack {
                    Text(item.nom)
                    Image(item.image).resizable().frame(width:120, height: 120)
                    Text(item.description)
                   }
                   }
               }
           }

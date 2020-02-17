//
//  DetailView.swift
//  Delos
//
//  Created by Joachim Alencon on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var item: StructElement
       
       var body: some View {
           ScrollView {
               VStack {
                   Image(item.image).resizable().frame(width:120, height: 120)
                   Text(item.salleDescription)
                   }
                   }
               }
           }

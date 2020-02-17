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
            VStack{
                HStack{ Image(item.image).resizable().renderingMode(.original).aspectRatio(contentMode: .fit).frame(width: 80, height: 80)
                Spacer().frame(width: 25)
                    VStack(alignment: .leading){
                        Text(item.nomSalle)
                        Text(item.ville + " - " + String(item.prixSalle) + "€")
                    }
                }
            }
        }
    }

struct ElementView_Previews: PreviewProvider {
    static var previews: some View {
        ElementView(item: Service.listData[0])
    }
}

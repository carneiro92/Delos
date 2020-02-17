//
//  Favoris.swift
//  Delos
//
//  Created by Joachim Alencon on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct FavorisView: View {
    var body: some View {
            NavigationView{
                List(Service.listData) { item in NavigationLink(destination: DetailView(item: item)){
                    ElementView(item: item)
                    }
                }.navigationBarTitle("Mes favoris")
            }
        }
    }

struct FavorisView_Previews: PreviewProvider {
    static var previews: some View {
        FavorisView()
    }
}

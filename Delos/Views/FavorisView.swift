//
//  Favoris.swift
//  Delos
//
//  Created by Joachim Alencon on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct FavorisView: View {
   @State var list: [StructSalle] = []
    
    var body: some View {
        NavigationView {
            List(list) { item in NavigationLink(destination: DetailView(item: item)){
                    ElementView(item: item)
                }
            }
            .navigationBarTitle("Mes favoris")
            .onAppear {
                getSalles() { salles in
                    self.list = salles
                }
            }
        }
    }
}

struct FavorisView_Previews: PreviewProvider {
    static var previews: some View {
        FavorisView()
    }
}

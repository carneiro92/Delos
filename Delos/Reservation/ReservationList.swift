//
//  ReservationList.swift
//  Delos
//
//  Created by Damien Cesar on 18/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI
import Firebase
struct ReservationList: View {
    @State var list: [UserData] = []
    var body: some View {
        VStack{
            NavigationView {
                List(list) { item in
                    
                    UserDetaillsView(item: item)
                    
                }
                .navigationBarTitle("Utilisateurs")
                .onAppear {
                    GetUserData() { users in
                        self.list = users
                    }
                }
            }
        }
    }
}


struct ReservationList_Previews: PreviewProvider {
    static var previews: some View {
        ReservationList()
    }
}

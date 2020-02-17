//
//  ReservationView.swift
//  Delos
//
//  Created by Damien Cesar on 17/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI
import Firebase


let db = Firestore.firestore()
struct ReservationView: View {
    @State var nbrMusiciens = 0
    @State var mail: String = ""
    @State var text: String = ""
    var body: some View {
        
        
        VStack{
            Text("\(text)")
            
        }
    }
}

private func getDocument() {
    // [START get_document]
    let docRef = db.collection("User").document("hNcMx5cqRN5lxBEr3EXh")

    docRef.getDocument { (document, error) in
        if let document = document, document.exists {
            let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
            print("Document data: \(dataDescription)")
        } else {
            print("Document does not exist")
        }
    }
    // [END get_document]
}

struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}

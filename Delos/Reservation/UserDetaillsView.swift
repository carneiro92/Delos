//
//  UserDetaillsView.swift
//  Delos
//
//  Created by Damien Cesar on 19/02/2020.
//  Copyright © 2020 Carneiro Jorge. All rights reserved.
//

import SwiftUI

struct UserDetaillsView: View {
    var item: UserData
    var body: some View {
        Text(item.firstName)
    }
}


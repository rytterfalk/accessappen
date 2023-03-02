//
//  ItemDetail.swift
//  Access
//
//  Created by Carl Rytterfalk on 2020-08-13.
//  Copyright © 2020 Carl Rytterfalk. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    var item: MenuItem
    
    var body: some View {
        
            VStack  {
            Text("Kortfattad information")
                .font(.title)
                .bold() 
            Text(item.kortinfo)
            Text("Bemötande")
                .bold()
            Text(item.bemotande)
            Text("Integrerade funktioner")
                .bold()
            Text(item.integreradefuntioner)
            Text("kundscenario")
                .bold()
            Text(item.kundscenario)
            Text(item.appar)
 
        Spacer()
               
            }.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: MenuItem.example)
    }
}

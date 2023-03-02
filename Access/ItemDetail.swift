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
        ScrollView {
            VStack (alignment: .leading, spacing: 6) {
            Text("Kortfattad information")
                .font(.title)
                .bold()
                .background(Color.gray.opacity(0.2))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 50)
            Text(item.kortinfo)
            Text("Bemötande")
                .bold()
                .background(Color.gray.opacity(0.2))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(item.bemotande)
            Text("Integrerade funktioner")
                .bold()
                .background(Color.gray.opacity(0.2))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(item.integreradefuntioner)
            Text("kundscenario")
                .bold()
                .background(Color.gray.opacity(0.2))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(item.kundscenario)
            Text(item.appar)
                
 
        Spacer()
               
            }.navigationBarTitle(Text(item.name), displayMode: .inline)
            .padding()
            .frame(width: 380)
            .background(Color.gray.opacity(0.1))
            
            
        }
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: MenuItem.example)
    }
}

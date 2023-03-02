//
//  ItemRow.swift
//  Access
//
//  Created by Carl Rytterfalk on 2020-08-13.
//  Copyright © 2020 Carl Rytterfalk. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    static let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    var item: MenuItem
    
    var body: some View {
        NavigationLink(destination: ItemDetail(item: item)) {
            HStack {
                Image(item.thumbnailImage)
                
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.headline)
                }
            
                Spacer()
                
                }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ItemDetail(item:
            MenuItem.example)
        }
    }
}

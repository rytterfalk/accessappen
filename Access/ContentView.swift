//
//  ContentView.swift
//  Access
//
//  Created by Carl Rytterfalk on 2020-08-13.
//  Copyright © 2020 Carl Rytterfalk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(menu) { section in
                        Section(header: Text(section.name)) {
                            ForEach(section.items) { item in
                                ItemRow(item: item)
                            }
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                    }
                }
                .padding(.top)
            }
            .navigationBarTitle("Accesspunkt")
        }
    }
}

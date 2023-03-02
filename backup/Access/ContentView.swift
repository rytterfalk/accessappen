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
        List {
            ForEach(menu) { section in
                Section(header: Text(section.name)) {
                
                    ForEach(section.items) {item in Text(item.name)
                    }
                    }
            }
            }.navigationBarTitle("Funktionsnedsättning")
            }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

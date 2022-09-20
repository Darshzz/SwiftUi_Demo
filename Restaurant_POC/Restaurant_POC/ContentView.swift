//
//  ContentView.swift
//  Restaurant_POC
//
//  Created by Darshan on 29/05/21.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            // Had to add ZStack becuase to hide right arrow in each cell
                            ZStack {
                                ItemRow(item: item)
                                NavigationLink(
                                    destination: ItemDetailView(itemDetail: item))
                                     {
                                    
                                }
                                // To hide tableview disclosure arrow indicator
                                .buttonStyle(PlainButtonStyle()).frame(width:0).opacity(0)
                            }
                        }.listRowBackground(Color.clear)
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

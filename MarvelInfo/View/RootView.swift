//
//  RootView.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            CharactersListView()
                .tabItem {
                    Label("Characters", systemImage: "person.2.crop.square.stack.fill")
                }
            
            SeriesListView()
                .tabItem {
                    Label("Series", systemImage: "books.vertical.fill")
                }
            
            ConfigView()
                .tabItem {
                    Label("Configurations", systemImage: "gearshape.fill")
                }
        }
    }
}

#Preview {
    RootView()
}

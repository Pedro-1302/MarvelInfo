//
//  CharactersListView.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

struct CharactersListView: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                CharacterCell()
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .padding(10)
                    .listRowSeparator(.hidden)
                    .background(ColorScheme.backgroundColor)
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
            .navigationTitle("Characters")
            .background(ColorScheme.backgroundColor)
        }
    }
}

#Preview {
    CharactersListView()
}

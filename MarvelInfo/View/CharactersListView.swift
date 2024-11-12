//
//  CharactersListView.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

struct CharactersListView: View {
    @StateObject private var viewModel = CharactersListViewModel()
    @EnvironmentObject var networkManager: NetworkManager
    
    var body: some View {
        NavigationStack {
            List(viewModel.characters) { character in
                CharacterCell(character: character)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 10)
                    .listRowSeparator(.hidden)
                    .background(ColorScheme.backgroundColor)
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
            .navigationTitle("Characters")
            .background(ColorScheme.backgroundColor)
            .searchable(text: $viewModel.searchableText, prompt: "Search a Character")
            .onAppear {
                Task {
                    let result = try await networkManager.getCharacters(page: 1)
                    viewModel.characters = result
                }
            }
        }
    }
}

#Preview {
    CharactersListView()
        .environmentObject(CharactersListViewModel())
        .environmentObject(NetworkManager())
}

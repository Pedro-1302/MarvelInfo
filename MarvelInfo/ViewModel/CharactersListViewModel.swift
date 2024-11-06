//
//  CharactersListViewModel.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

@MainActor
final class CharactersListViewModel: ObservableObject {
    @Published var searchableText: String = ""
}

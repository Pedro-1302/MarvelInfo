//
//  Serie.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

struct Serie: Codable, Hashable, MarvelEntity {
    let id: Int
    let title: String
    let description: String?
    let resourceURI: String
    let urls: [URLElement]
    let startYear, endYear: Int
    let rating, type: String
    let modified: Date
    let thumbnail: Thumbnail?
    let characters: ResourceList

    var nameOrTitle: String { return title }
}

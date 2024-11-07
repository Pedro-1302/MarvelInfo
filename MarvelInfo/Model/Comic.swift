//
//  Comic.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

struct Comic: Codable, MarvelEntity {
    let id: Int
    let title: String
    let description: String?
    let issueNumber: Int
    let pageCount: Int
    let thumbnail: Thumbnail?

    var nameOrTitle: String { return title }
}

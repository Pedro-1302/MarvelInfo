//
//  MarvelEntity.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

protocol MarvelEntity {
    var description: String? { get }
    var nameOrTitle: String { get }
    var thumbnail: Thumbnail? { get }
    var displayDescription: String { get }
    var thumbnailURL: String { get }
}

extension MarvelEntity {
    var thumbnailURL: String {
        return thumbnail?.fullURL ?? "https://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg"
    }
    
    var displayDescription: String {
        if let description = description, !description.isEmpty {
            return description
        } else {
            return "\(nameOrTitle) is a Marvel entity."
        }
    }
}

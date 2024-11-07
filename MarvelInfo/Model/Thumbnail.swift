//
//  Thumbnail.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

struct Thumbnail: Codable, Hashable {
    let path: String
    let thumbnailExtension: String

    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension = "extension"
    }
    
    var fullURL: String {
        return "\(path).\(thumbnailExtension)".replacingOccurrences(of: "http://", with: "https://")
    }
}

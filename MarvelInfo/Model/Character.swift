//
//  Character.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

struct Character: Codable, MarvelEntity {
    let id = UUID()
    let name: String
    let description: String?
    let thumbnail: Thumbnail?
    let resourceURI: String?
    let comics: ResourceList?
    let urls: [URLElement]?
    
    var nameOrTitle: String { return name }
}

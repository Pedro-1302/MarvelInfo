//
//  Character.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

struct Character: Codable, MarvelEntity, Identifiable {
    let id = UUID()
    let name: String
    let description: String?
    let thumbnail: Thumbnail?
    let resourceURI: String?
    let comics: ResourceList?
    let urls: [URLElement]?
    
    var nameOrTitle: String { return name }
    
    static let sampleCharacter: Character = Character(name: "Spider Man", description: "Spider Man is a hero from Marvel.", thumbnail: Thumbnail(path: "", thumbnailExtension: ""), resourceURI: "", comics: ResourceList(available: 0, items: []), urls: [URLElement(type: "", url: "")])
}


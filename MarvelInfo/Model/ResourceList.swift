//
//  ResourceList.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

struct ResourceList: Codable, Hashable {
    let available: Int
    let items: [Item]
}

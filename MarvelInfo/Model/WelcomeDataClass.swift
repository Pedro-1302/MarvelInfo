//
//  WelcomeDataClass.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

struct WelcomeDataClass<T: Codable>: Codable {
    let results: [T]
}

struct MarvelWelcome<T: Codable>: Codable {
    let attributionText: String
    let data: WelcomeDataClass<T>
}

//
//  NetworkManager.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import Foundation

final class NetworkManager: ObservableObject {
    private let responseUtils = ResponseUtils()
    private let decoder = JSONDecoder()
    
    init() {
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        decoder.dateDecodingStrategy = .iso8601
    }
    
    func getCharacters(page: Int) async throws -> [Character] {
        return try await getEntities(endpoint: "/characters", page: page)
    }
    
    func getSeries(page: Int) async throws -> [Serie] {
        return try await getEntities(endpoint: "/series", page: page)
    }

    func getComics(for characterId: String, page: Int = 0) async throws -> [Comic] {
        return try await getEntities(
            endpoint: "/characters",
            page: page,
            pathComponents: [characterId, "comics"]
        )
    }

    private func getEntities<T: Codable>(endpoint: String, page: Int = 0, pathComponents: [String] = []) async throws -> [T] {
        let fullPath = ([endpoint] + pathComponents).joined(separator: "/")
        guard let url = responseUtils.createURL(for: fullPath, with: page) else {
            throw ResponseError.invalidUsername
        }

        let (data, response) = try await URLSession.shared.data(from: url)
        guard responseUtils.isResponseValid(response) else {
            throw ResponseError.invalidResponse
        }

        let parsedData = try decoder.decode(MarvelWelcome<T>.self, from: data)
        return parsedData.data.results
    }
}


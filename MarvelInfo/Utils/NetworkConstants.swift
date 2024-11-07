//
//  NetworkConstants.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 07/11/24.
//

import Foundation

enum NetworkConstants {
    static let baseURL = "https://gateway.marvel.com/v1/public"
    static var timestamp: String { return "\(Int(Date().timeIntervalSince1970))" }
    static let privateKey = Bundle.main.object(forInfoDictionaryKey: "PRIVATE_KEY") as? String ?? "N/A"
    static let publicKey = Bundle.main.object(forInfoDictionaryKey: "PUBLIC_KEY") as? String ?? "N/A"
    static let limit = "9"
    
    static var hash: String {
        let hashString = "\(timestamp)\(privateKey)\(publicKey)"
        print(timestamp)
        print(privateKey)
        print(publicKey)
        print(MD5Hasher.getMD5(hashString))
        return MD5Hasher.getMD5(hashString) ?? ""
    }
    
    static let params = [
        URLQueryItem(name: "ts", value: timestamp),
        URLQueryItem(name: "apikey", value: publicKey),
        URLQueryItem(name: "hash", value: hash),
        URLQueryItem(name: "limit", value: limit),
    ]
}

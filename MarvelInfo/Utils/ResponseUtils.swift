//
//  ResponseUtils.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 07/11/24.
//

import Foundation

struct ResponseUtils {
    func isResponseValid(_ response: URLResponse?) -> Bool {
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else { return false }
        return true
    }
    
    func createURL(for endpoint: String, with page: Int = 0) -> URL? {
        var components = URLComponents(string: NetworkConstants.baseURL + endpoint)
        components?.queryItems = NetworkConstants.params
        print(NetworkConstants.params)
        let pageItem = URLQueryItem(name: "offset", value: "\(page)")
        components?.queryItems?.append(pageItem)
        return components?.url
    }
}

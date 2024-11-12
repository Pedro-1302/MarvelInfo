//
//  ImageLoader.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 08/11/24.
//

import UIKit

class ImageLoader {
    static let shared = ImageLoader()
    
    private init() {}
    
    func downloadImage(from urlString: String) async -> UIImage? {
        guard let url = URL(string: urlString) else { return nil }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let image = UIImage(data: data) else { return nil }
            return image
        } catch {
            return nil
        }
    }
}

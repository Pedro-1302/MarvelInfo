//
//  CharacterCellViewModel.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 08/11/24.
//

import UIKit

@MainActor
final class CharacterCellViewModel: ObservableObject {
    @Published var image: UIImage? = UIImage(systemName: "photo.artframe")
    
    func loadImage(from url: String) {
        Task { [weak self] in
            guard let self else { return }
            let downloadedImage = await ImageLoader.shared.downloadImage(from: url) ?? UIImage(systemName: "photo.artframe")
            DispatchQueue.main.async { self.image = downloadedImage }
        }
    }
}

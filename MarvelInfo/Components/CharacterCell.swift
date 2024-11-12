//
//  CharacterCell.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

struct CharacterCell: View {
    @StateObject private var viewModel = CharacterCellViewModel()
    let character: Character
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            VStack(alignment: .leading, spacing: 4) {
                Text(character.nameOrTitle)
                    .titleLabelStyle()
                                        
                Text(character.displayDescription)
                    .bodyLabelStyle(lineLimit: 3)
                    .frame(maxHeight: .infinity)
                
                HStack {
                    Text("See comics")
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                }
                .captionLabelStyle()
            }
            .padding(.vertical, 10)
                                    
            if let image = viewModel.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 130)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        }
        .padding(10)
        .background(ColorScheme.cellColor)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .onAppear {
            viewModel.loadImage(from: character.thumbnailURL)
        }
    }
}

#Preview {
    List (0..<1) { _ in
        CharacterCell(character: Character.sampleCharacter)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .padding(.vertical, 4)
            .padding(.horizontal, 10)
            .listRowSeparator(.hidden)
            .background(ColorScheme.backgroundColor)
    }
    .listStyle(.plain)
    .scrollIndicators(.hidden)
    .background(ColorScheme.backgroundColor)
}



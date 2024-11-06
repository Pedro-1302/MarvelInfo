//
//  CharacterCell.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

struct CharacterCell: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Character Title")
                    .titleLabelStyle()
                                        
                Text("Description Description Description Description Description Description Description Description Description Description Description Description Description Description ")
                    .bodyLabelStyle(lineLimit: 3)
                    .frame(maxHeight: .infinity)
                                                                
                HStack {
                    Text("See comics")
                    
                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                }
                .captionLabelStyle()
            }
            .padding(10)
            
            Spacer()
            
            Image(systemName: "photo.artframe")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 130)
                .clipShape(.rect(cornerRadius: 8))
        }
        .padding(10)
        .background(ColorScheme.cellColor)
        .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    CharacterCell()
}

//
//  SubtitleModifier.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

struct SubtitleModifier: ViewModifier {
    var lineLimit: Int?

    func body(content: Content) -> some View {
        content
            .font(.system(size: 20.0))
            .fontWeight(.regular)
            .lineLimit(lineLimit)
            .minimumScaleFactor(0.8)
            .foregroundStyle(ColorScheme.bodyLabelColor)
    }
}

//
//  CaptionModifier.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

struct CaptionModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 15.0))
            .fontWeight(.regular)
            .foregroundStyle(ColorScheme.accent)
    }
}

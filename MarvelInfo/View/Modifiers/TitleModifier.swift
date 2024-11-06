//
//  TitleModifier.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20.0))
            .fontWeight(.semibold)
            .bold()
            .foregroundStyle(ColorScheme.white)
    }
}

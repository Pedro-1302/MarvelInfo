//
//  View+Ext.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

extension View {
    func titleLabelStyle() -> some View { modifier(TitleModifier()) }
    
    func bodyLabelStyle(lineLimit: Int? = 3) -> some View { modifier(SubtitleModifier(lineLimit: lineLimit)) }
    
    func captionLabelStyle() -> some View { modifier(CaptionModifier()) }
}

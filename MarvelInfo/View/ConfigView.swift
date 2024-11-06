//
//  ConfigView.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

struct ConfigView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Config View")
            }
            .navigationTitle("Configuration")
            .background(ColorScheme.backgroundColor)
        }
    }
}

#Preview {
    ConfigView()
}

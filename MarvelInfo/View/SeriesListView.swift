//
//  SeriesListView.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI

struct SeriesListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Series View")
            }
            .navigationTitle("Series")
            .background(ColorScheme.backgroundColor)
        }
    }
}

#Preview {
    SeriesListView()
}

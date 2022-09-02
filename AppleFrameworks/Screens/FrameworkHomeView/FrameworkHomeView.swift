//
//  FrameworkHomeView.swift
//  AppleFrameworks
//
//  Created by Bern N on 8/19/22.
//

import SwiftUI

struct FrameworkHomeView: View {
    var body: some View {
        TabView {
            FrameworkGridView()
                .tabItem {
                    Label("Grid", systemImage: "square.grid.3x3")
                }
            
            FrameworkListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
        }
    }
}

struct FrameworkHomeView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkHomeView()
            .preferredColorScheme(.dark)
    }
}

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
                    Image(systemName: "square.grid.3x3")
                    Text("Grid")
                }
            
            FrameworkListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
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

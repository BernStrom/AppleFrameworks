//
//  FrameworkListView.swift
//  AppleFrameworks
//
//  Created by Bern N on 8/19/22.
//

import SwiftUI

struct FrameworkListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailListView(framework: framework)) {
                        FrameworkTitleListView(framework: framework)
                    }
                }
            }
            .navigationTitle(" Frameworks")
        }
    }
}


struct FrameworkListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
            .preferredColorScheme(.dark)
    }
}

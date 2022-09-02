//
//  FrameworkDetailListView.swift
//  AppleFrameworks
//
//  Created by Bern N on 8/19/22.
//

import SwiftUI

struct FrameworkDetailListView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com/notfound")!) {
                Label("Learn More", systemImage: "book.fill")
            }
            .modifier(StandardLinkStyle())
        }
    }
}


struct FrameworkDetailListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailListView(viewModel: FrameworkDetailViewModel(framework: MockData.frameworks[1]))
    }
}

//
//  FrameworkDetailGridView.swift
//  AppleFrameworks
//
//  Created by Bern N on 8/18/22.
//

import SwiftUI

struct FrameworkDetailGridView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            XDismissButton()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com/notfound")!) {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 15))
            .tint(.green)
            .padding(.bottom, 60)
        }
    }
}


struct FrameworkDetailGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailGridView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework))
            .preferredColorScheme(.dark)
    }
}

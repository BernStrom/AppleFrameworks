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
            
            Button {
                viewModel.isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 15))
            .tint(.green)
            .padding(.bottom, 60)
        }
        .fullScreenCover(isPresented: $viewModel.isShowingSafariView) {
            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com/notfound")!)
                .ignoresSafeArea()
        }
    }
}


struct FrameworkDetailListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailListView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework))
    }
}

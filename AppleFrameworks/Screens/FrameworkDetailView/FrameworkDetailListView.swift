//
//  FrameworkDetailListView.swift
//  AppleFrameworks
//
//  Created by Bern N on 8/19/22.
//

import SwiftUI

struct FrameworkDetailListView: View {
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .padding(.bottom, 60)
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                .ignoresSafeArea()
        }
    }
}


struct FrameworkDetailListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailListView(framework: MockData.sampleFramework)
    }
}

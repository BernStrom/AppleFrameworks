//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Bern N on 8/18/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    @State private var isShowingSafariView = false
    @Environment(\.dismiss) var dismissDetailView
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    dismissDetailView()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                .ignoresSafeArea()
        }
    }
}


struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}

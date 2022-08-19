//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by Bern N on 8/19/22.
//

import SwiftUI

struct XDismissButton: View {
    @Environment(\.dismiss) var dismissDetailView
    
    var body: some View {
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
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton()
    }
}

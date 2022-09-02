//
//  CustomModifiers.swift
//  AppleFrameworks
//
//  Created by Bern N on 9/3/22.
//

import SwiftUI

struct StandardLinkStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 15))
            .tint(.green)
            .padding(.bottom, 60)
    }
}

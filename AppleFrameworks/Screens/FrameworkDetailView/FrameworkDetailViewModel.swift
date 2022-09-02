//
//  FrameworkDetailViewModel.swift
//  AppleFrameworks
//
//  Created by Bern N on 9/3/22.
//

import Foundation

final class FrameworkDetailViewModel: ObservableObject {
    let framework: Framework
    @Published var isShowingSafariView = false
    
    init(framework: Framework) {
        self.framework = framework
    }
}

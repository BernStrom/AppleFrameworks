//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Bern N on 8/18/22.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    @Published var isShowingDetailView = false
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    let columns = Array(repeating: GridItem(.flexible()), count: 3)
}

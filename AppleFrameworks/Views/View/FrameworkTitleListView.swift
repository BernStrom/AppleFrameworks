//
//  FrameworkTitleListView.swift
//  AppleFrameworks
//
//  Created by Bern N on 8/19/22.
//

import SwiftUI

struct FrameworkTitleListView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            
            Text(framework.name)
                .font(.title2.weight(.semibold))
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

struct FrameworkTitleListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleListView(framework: MockData.sampleFramework)
    }
}

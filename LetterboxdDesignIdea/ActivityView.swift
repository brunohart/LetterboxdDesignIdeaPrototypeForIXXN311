//
//  ActivityView.swift
//  LetterboxdDesignIdea
//
//  Created by Brunohart on 10/05/2025.
//

// ActivityView.swift
import SwiftUI

struct ActivityView: View {
    var body: some View {
        NavigationStack {
            Image("ActivityPage")
                 .resizable()
                 .scaledToFill()
                 .ignoresSafeArea()
        }
    }
}

#Preview {
    ActivityView()
}

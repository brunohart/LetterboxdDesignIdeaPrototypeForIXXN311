//
//  HomeView.swift
//  LetterboxdDesignIdea
//
//  Created by Brunohart on 10/05/2025.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationStack {
           Image("HomePage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    HomeView()
}

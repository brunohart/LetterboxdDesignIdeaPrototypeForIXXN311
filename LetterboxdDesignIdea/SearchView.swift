//
//  SearchView.swift
//  LetterboxdDesignIdea
//
//  Created by Brunohart on 10/05/2025.
//

// CreateView.swift

import SwiftUI

struct SearchView : View {
    
    var body: some View {
        NavigationStack{
             Image("SearchPage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
    }
}


#Preview {
    SearchView()
}

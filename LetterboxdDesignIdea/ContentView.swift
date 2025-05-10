//
//  ContentView.swift
//  LetterboxdDesignIdea
//
//  Created by Brunohart on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Films")
                }

            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }

            CreateView()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Create")
                }

            ActivityView()
                .tabItem {
                    Image(systemName: "bolt.fill")
                    Text("Activity")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    ContentView()
}

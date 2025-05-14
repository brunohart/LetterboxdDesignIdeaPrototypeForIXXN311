//
//  ContentView.swift
//  LetterboxdDesignIdea
//
//  Created by Brunohart on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor.black
        
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                }

            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }

            CreateView()
                .tabItem {
                    Image(systemName: "plus.circle")
                }

            ActivityView()
                .tabItem {
                    Image(systemName: "bolt.fill")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                }
        }
    
    }
    
}

#Preview {
    ContentView()
}

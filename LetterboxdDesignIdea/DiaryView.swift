//
//  HomeView.swift
//  LetterboxdDesignIdea
//
//  Created by Brunohart on 10/05/2025.
//

import SwiftUI

struct DiaryView: View {
    let movies: [Movie] = [
        Movie(title: "Lost in Translation", posterName: "lost", rating: 4.5, reviewSnippet: "A beautiful meditation on loneliness and connection.", watchDate: Date(timeIntervalSinceNow: -86400 * 1)),
        Movie(title: "Her", posterName: "her", rating: 5.0, reviewSnippet: "A haunting and romantic vision of the future.", watchDate: Date(timeIntervalSinceNow: -86400 * 3)),
        Movie(title: "Call Me by Your Name", posterName: "cmbyn", rating: 4.0, reviewSnippet: "A lush, sensual coming-of-age masterpiece.", watchDate: Date(timeIntervalSinceNow: -86400 * 7)),
        Movie(title: "Moonlight", posterName: "moonlight", rating: 4.5, reviewSnippet: "Quiet, poetic, and unforgettable.", watchDate: Date(timeIntervalSinceNow: -86400 * 10))
    ]
    
    var groupedMovies: [String: [Movie]] {
        Dictionary(grouping: movies) { movie in
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return formatter.string(from: movie.watchDate)
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(groupedMovies.keys.sorted(by: >), id: \.self) { dateKey in
                    Section(header: Text(dateKey).font(.headline)) {
                        ForEach(groupedMovies[dateKey]!) { movie in
                            MovieRowView(movie: movie)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Diary")
        }
    }
}

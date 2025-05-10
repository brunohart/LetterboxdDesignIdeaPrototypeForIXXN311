//
//  MovieRowView.swift
//  LetterboxdDesignIdea
//
//  Created by Brunohart on 10/05/2025.
//

import SwiftUI


struct MovieRowView: View {
    let movie: Movie

    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(movie.posterName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 100)
                .clipped()
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 4) {
                Text(movie.title)
                    .font(.headline)
                
                HStack(spacing: 4) {
                    ForEach(0..<5) { index in
                        Image(systemName: index < Int(movie.rating) ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                            .font(.caption)
                    }
                }

                Text(movie.reviewSnippet)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
            }

            Spacer()
        }
        .padding(.vertical, 8)
    }
}

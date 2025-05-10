//
//  Movie.swift
//  LetterboxdDesignIdea
//
//  Created by Brunohart on 10/05/2025.
//
import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let posterName: String
    let rating: Double
    let reviewSnippet: String
    let watchDate: Date
}

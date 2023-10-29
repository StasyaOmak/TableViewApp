//
//  Movie.swift
//  TableViewApp
//
//  Created by Anastasiya Omak on 27/10/2023.
//

import Foundation

struct Movie {
    let title: String
    let poster: String
    let genre: String
    let year: Int
    let description: String
    let trailer: String
    let movieStars: String
    
    static func  createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let titles = DataManager.shared.movieTitles
        let posters = DataManager.shared.imageNames
        let genres = DataManager.shared.movieGenres
        let years = DataManager.shared.releaseYears
        let descriptions = DataManager.shared.descriptions
        let trailers = DataManager.shared.movieTrailerUrls
        let movieStars = DataManager.shared.movieStars
        
        for i in 0..<titles.count {
            let movie = Movie(title: titles[i], poster: posters[i], genre: genres[i], year: years[i], description: descriptions[i], trailer: trailers[i], movieStars: movieStars[i])
            
            movies.append(movie)
        }
        
        
        return movies
    }
}


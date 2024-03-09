//
//  NetworkURLManager.swift
//  TravelAdventureApp
//
//  Created by Roberto Moran on 3/8/24.
//

import Foundation

protocol NetworkURLManager {
    func buildGeneralMoviesURL () -> URL?
}

class NetworkURLManagerImpl: NetworkURLManager {
    private let apiKey = "faa285c10cee92f1ca2a9646c39429b2"
    private let MoviesBaseURL = "https://api.themoviedb.org"
    private let imageW500BaseURL = "https://image.tmdb.org/t/p/w500/"
    
    func buildGeneralMoviesURL() -> URL? {
        guard let url = URL(string: "\(MoviesBaseURL)/3/trending/movie/day?api_key=\(apiKey)") else { return nil }
        return url
    }
}

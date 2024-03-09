//
//  Movie.swift
//  TravelAdventureApp
//
//  Created by Roberto Moran on 3/8/24.
//

import Foundation

struct MoviesResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable {
    let adult: Bool?
    let backdrop_path: String?
    let id: Int?
    let title: String?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let poster_path: String?
    let media_type: String?
    let genre_ids: [Int]?
    let popularity: Double?
    let release_date: String?
    let video: Bool?
    let vote_average: Double?
    let vote_count: Int?
}

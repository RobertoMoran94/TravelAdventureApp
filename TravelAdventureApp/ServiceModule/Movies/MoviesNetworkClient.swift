//
//  MoviesNetworkClient.swift
//  TravelAdventureApp
//
//  Created by Roberto Moran on 3/8/24.
//

import Foundation

enum MoviesErrorType: Error {
    case failToGetMovies
}

typealias Response = (Result<[Movie], Error>) -> Void

protocol MoviesNetworkClient {
    func fetchGeneralMovies(queryParams: [String: String]?, completion: @escaping Response)
}

class MoviesNetworkClientImp: MoviesNetworkClient {
    
    private let urlSession = URLSession.shared
    private let networkURLManager: NetworkURLManager
    
    init(networkURLManager: NetworkURLManager = NetworkURLManagerImpl()) {
        self.networkURLManager = networkURLManager
    }
    
    func fetchGeneralMovies(queryParams: [String: String]?, completion: @escaping Response) {
        guard let url = networkURLManager.buildGeneralMoviesURL() else { return }
        
        let task = urlSession.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(MoviesErrorType.failToGetMovies))
                return
            }
            do {
                let result = try JSONDecoder().decode(MoviesResponse.self, from: data)
                completion(.success(result.results))
            } catch {
                completion(.failure(MoviesErrorType.failToGetMovies))
            }
        }
        task.resume()
    }
}

//
//  APIService.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import Foundation

public class APIService {
    public static let shared = APIService()
    
    public enum APIError: Error {
        case error(_ errorString: String)
    }
    
    public func getJSON<T: Decodable>(urlString: String,
                                      completion: @escaping (Result<T,APIError>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(.error(NSLocalizedString("Error: Invalid URL", comment: ""))))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue(Constants.Keys.API.value1.rawValue, forHTTPHeaderField: Constants.Keys.API.key1.rawValue)
        request.setValue(Constants.Keys.API.value2.rawValue, forHTTPHeaderField: Constants.Keys.API.key2.rawValue)
        
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(.error("Error: \(error.localizedDescription)")))
                return
            }
            
            guard let data = data else {
                completion(.failure(.error(NSLocalizedString("Error: Data are corrupt.", comment: ""))))
                return
            }
            let decoder = JSONDecoder()
            
            do {
                let decodedData = try decoder.decode(T.self, from: data)
                print(data)
                completion(.success(decodedData))
                return
            } catch let decodingError {
                completion(.failure(APIError.error("Error: \(decodingError.localizedDescription)")))
                return
            }
            
        }.resume()
    }
}

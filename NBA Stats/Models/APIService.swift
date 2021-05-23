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
    
    public func getApiResponse<T: Decodable>(sourceName: String, completionHandler: @escaping (Result<T,APIError>) -> Void)
    {
        if let path = Bundle.main.path(forResource: sourceName, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                do {
                    
                    let decodedData = try decoder.decode(T.self, from: data)
                                
                    completionHandler(.success(decodedData))

                }catch{
                    print(error) // shows error
                    print("Decoding failed")// local message
                }
                
            } catch {
                print(error) // shows error
                print("Unable to read file")// local message
            }
        }
    }
    
}

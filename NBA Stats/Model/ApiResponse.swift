//
//  ApiResponse.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import Foundation

struct ApiResponse: Codable{
    
    var api: API
    
    struct API: Codable{
        var status: Int
        var message: String
        var standings: [Team]?
        
    }
}

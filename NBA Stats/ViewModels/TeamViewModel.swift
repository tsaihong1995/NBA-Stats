//
//  TeamViewModel.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-14.
//

import Foundation

class TeamViewModel: ObservableObject {
    
    @Published var isLoading: Bool = false
    
    let id = UUID().uuidString
    @Published var team: Team
    var isFavorite = false
    
    init(team: Team) {
        self.team = team
    }
    
    
    func getTeamSeasonalStats() {
        
        let apiService = APIService.shared
        
        apiService.getApiResponse(sourceName: "team_seasonal_stats") { (result: Result<TeamSeasonalStats, APIService.APIError>) in
            

        }
    }
    
    
}

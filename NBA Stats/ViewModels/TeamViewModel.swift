//
//  TeamViewModel.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-14.
//

import Foundation

class TeamViewModel: ObservableObject {
    
    struct AppError: Identifiable {
        let id = UUID().uuidString
        let errorString: String
    }
    
    @Published var isLoading: Bool = false
    @Published var team: Team
    var appError: AppError? = nil
    let id = UUID().uuidString
    var isFavorite = false
    var teamStat: TeamSeasonalStats?
    var conference: Conference?
    
    init(team: Team, conference: Conference? = nil) {
        self.team = team
        self.conference = conference
        getTeamSeasonalStats(team: team)
    }
    
    
    func getTeamSeasonalStats(team: Team) {
        
        let apiService = APIService.shared
        
        apiService.getApiResponse(sourceName: "team_seasonal_stats_\(team.id)") { (result: Result<TeamSeasonalStats, APIService.APIError>) in
            
            switch result {
            case .success(let apiRes):
                DispatchQueue.main.async {
                    self.isLoading = false
                    
                    self.teamStat = apiRes
                    
                }
                
                
                
            case .failure(let apiError):
                switch apiError {
                case .error(let errorString):
                    self.isLoading = false
                    self.appError = AppError(errorString: errorString)
                    print(errorString)
                }
            }
            

        }
    }
    
    
}

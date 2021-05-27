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
    @Published var teamListVM: TeamListViewModel?
    @Published var teamPlayers: [Player]?
    var appError: AppError? = nil
    let id = UUID().uuidString
    var isFavorite = false
    var teamStat: TeamSeasonalStats?
    var conference: Conference?
    
    init(team: Team, conference: Conference? = nil, teamListVM: TeamListViewModel? = nil) {
        self.team = team
        self.conference = conference
        self.teamListVM = teamListVM
        getTeamSeasonalStats(team: team)
        print("Init")
    }
    
    
    func getTeamSeasonalStats(team: Team) {
        
        let apiService = APIService.shared
        
        apiService.getApiResponse(sourceName: "team_seasonal_stats_\(team.id)") { (result: Result<TeamSeasonalStats, APIService.APIError>) in
            
            switch result {
            case .success(let apiRes):
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.teamStat = apiRes
                    self.teamListVM?.teamsStats.append(apiRes)
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
    
    func getTeamsPlayersStats(team: Team) {
        let apiService = APIService.shared
        apiService.getApiResponse(sourceName: "team_seasonal_stats_\(team.id)") { (result: Result<[Player], APIService.APIError>) in
            
            switch result {
            case .success(let apiRes):
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.teamPlayers = apiRes
                    
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

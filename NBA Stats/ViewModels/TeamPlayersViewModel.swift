//
//  TeamPlayersViewModel.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-26.
//

import Foundation

import Foundation

class TeamPlayersViewModel: ObservableObject {
    
    struct AppError: Identifiable {
        let id = UUID().uuidString
        let errorString: String
    }
    
    @Published var teamVM: TeamViewModel
    @Published var isLoading: Bool = false
    @Published var teamID: String?
    @Published var teamPlayers: [TeamSeasonalStats.Players]?
    
    var appError: AppError? = nil
    let id = UUID().uuidString
    var isFavorite = false
    
    init(teamVM: TeamViewModel) {
        //self.team = team
        self.teamVM = teamVM
        getTeamsPlayersStats(team: teamVM.team)
    }
    
    func getTeamsPlayersStats(team: Team) {
        print("Fetch \(team.name) Players' Stats")
        let apiService = APIService.shared
        apiService.getApiResponse(sourceName: "team_seasonal_stats_\(team.id)") { (result: Result<TeamSeasonalStats, APIService.APIError>) in
            
            switch result {
            case .success(let apiRes):
                DispatchQueue.main.async {
                    self.isLoading = false
                    
                    self.teamPlayers = apiRes.players
                    
                }
                
            case .failure(let apiError):
                switch apiError {
                case .error(let errorString):
                    print("Fail!!")
                    self.isLoading = false
                    self.appError = AppError(errorString: errorString)
                    print(errorString)
                }
            }
        }
    }
    
    
}

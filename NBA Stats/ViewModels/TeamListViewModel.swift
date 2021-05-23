//
//  TeamListViewModel.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-14.
//

import Foundation

class TeamListViewModel: ObservableObject{
    
    struct AppError: Identifiable {
        let id = UUID().uuidString
        let errorString: String
    }
    
    @Published var teams: [TeamViewModel] = []
    @Published var isLoading: Bool = false
    @Published var faviores: [TeamViewModel] = []
    var appError: AppError? = nil
    
    init() {
        getTeamStanding()
    }
    
    func getTeamStanding() {
        
        let apiService = APIService.shared
        
        apiService.getApiResponse(sourceName: "team_standing") { (result: Result<ApiResponse, APIService.APIError>) in
            switch result {
            case .success(let apiRes):
                DispatchQueue.main.async {
                    
                    self.isLoading = false
                    self.teams.removeAll()
                    
                    for conference in apiRes.conferences {
                        if let divisions = conference.divisions {
                            for division in divisions{
                                if let teams = division.teams {
                                    for team in teams {
                                        
                                        self.teams.append(TeamViewModel(team: team, conference: conference))
                                        print("-----------")
                                        print("Division: \(conference.alias.prefix(4))")
                                        print("ID: \(team.id)")
                                        print("Name: \(team.name)")
                                        print("Wins: \(team.wins)")
                                        print("Losses: \(team.losses)")
                                        print("Win percentage: \(team.winPct)")
                                        print("Streak: \(team.streak.kind) \(team.streak.length)")
                                        
                                    }
                                }
                            }
                        }
                        
                    }
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

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
    @Published var teamsStats: [TeamSeasonalStats] = []
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
                                        self.teams.append(TeamViewModel(team: team, conference: conference, teamListVM: self))
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
    


    
    func fieldGoalPctMax() -> Double{
        return teamsStats.map {$0.ownRecord.total.fieldGoalsPct}.max()! * 100
    }
    func threePTFieldGoalPctMax() -> Double{
        return teamsStats.map {$0.ownRecord.total.threePointsPct}.max()! * 100
    }
    func threePTMadeMax() -> Double{
        return teamsStats.map {$0.ownRecord.average.threePointsMade}.max()!
    }
    func avgPointMax() -> Double{
        return teamsStats.map {$0.ownRecord.average.points}.max()!
    }
    func freeThrowsMadeMax() -> Double{
        return teamsStats.map {$0.ownRecord.average.freeThrowsMade}.max()!
    }
    func freeThrowsPctMax() -> Double{
        return teamsStats.map {$0.ownRecord.total.freeThrowsPct}.max()! * 100
    }
    func benchPointsMax() -> Double{
        return teamsStats.map {$0.ownRecord.average.benchPoints}.max()!
    }
    func reboundsMax() -> Double{
        return teamsStats.map {$0.ownRecord.average.rebounds}.max()!
    }
    func offReboundsMax() -> Double{
        return teamsStats.map {$0.ownRecord.average.offRebounds}.max()!
    }
    func defReboundsMax() -> Double{
        return teamsStats.map {$0.ownRecord.average.defRebounds}.max()!
    }
    func assistsMax() -> Double{
        return teamsStats.map {$0.ownRecord.average.assists}.max()!
    }
    func stealsMax() -> Double{
        return teamsStats.map {$0.ownRecord.average.steals}.max()!
    }
    func blocksMax() -> Double{
        return teamsStats.map {$0.ownRecord.average.blocks}.max()!
    }
    func turnoverMin() -> Double{
        return teamsStats.map {$0.ownRecord.average.turnovers}.min()!
    }
    func trueShootingPct() -> Double{
        return teamsStats.map {$0.ownRecord.total.trueShootingPct}.max()! * 100
    }
    
}

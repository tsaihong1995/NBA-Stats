//
//  TeamRecordDetail.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-22.
//

import SwiftUI

struct TeamRecordDetails: View {
    
    @State var teamVM: TeamViewModel
    var body: some View {
        VStack{
            if let teamStat = teamVM.teamStat {
                Group{
                    Text("Team Name: \(teamStat.name)")
                    Text("-Own Record-")
                    
                }
                Group{
                    Text("FG (%): \(teamStat.ownRecord.total.fieldGoalsPct.description)")
                    Text("3PT FG (%): \(teamStat.ownRecord.total.threePointsPct.description)")
                    Text("3PT FG: \(teamStat.ownRecord.average.threePointsMade)")
                    Text("AVG Point: \(teamStat.ownRecord.average.points)")
                    Text("Free Throws Made: \(teamStat.ownRecord.average.freeThrowsMade)")
                    Text("Free Throws FG: \(teamStat.ownRecord.total.freeThrowsPct)")
                    Text("Bench Points: \(teamStat.ownRecord.average.benchPoints)")
                    Text("Rebounds: \(teamStat.ownRecord.average.rebounds)")
                    Text("Offensive Rebounds: \(teamStat.ownRecord.average.offRebounds)")
                    Text("Deffensive Rebounds: \(teamStat.ownRecord.average.defRebounds)")
                }
                Group{
                    Text("Assists: \(teamStat.ownRecord.average.assists)")
                    Text("Steals: \(teamStat.ownRecord.average.steals)")
                    Text("Blocks: \(teamStat.ownRecord.average.blocks)")
                    Text("Turnover: \(teamStat.ownRecord.average.turnovers)")
                    Text("True Shooting Percentage: \(teamStat.ownRecord.total.trueShootingPct)")
                }
            }
        }
        
    }
    
}

let testTeamVM = TeamViewModel(team: myTeam)

struct TeamRecordDetail_Previews: PreviewProvider {
    static var previews: some View {
        TeamRecordDetails(teamVM: testTeamVM)
    }
}



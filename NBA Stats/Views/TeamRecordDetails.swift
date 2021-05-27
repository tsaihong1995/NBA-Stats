//
//  TeamRecordDetail.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-22.
//

import SwiftUI

struct TeamRecordDetails: View {
    
    @ObservedObject var teamVM: TeamViewModel
    var body: some View {
        VStack {
            ScrollView{
                VStack{
                    if let teamStat = teamVM.teamStat {
                        Group{
                            Text("Team Name: \(teamStat.name)")
                        }
                        Group{
                            
                            MyProgressView(teamVM: teamVM, titleName: "FG (%)", progress: teamStat.ownRecord.total.fieldGoalsPct * 100, maxProgressValue: teamVM.teamListVM!.fieldGoalPctMax())
                            MyProgressView(teamVM: teamVM, titleName: "3PT FG (%)", progress: teamStat.ownRecord.total.threePointsPct * 100, maxProgressValue: teamVM.teamListVM!.threePTFieldGoalPctMax())
                            MyProgressView(teamVM: teamVM, titleName: "3PT Made", progress: teamStat.ownRecord.average.threePointsMade, maxProgressValue: teamVM.teamListVM!.threePTMadeMax())
                            MyProgressView(teamVM: teamVM, titleName: "Average Points", progress: teamStat.ownRecord.average.points, maxProgressValue: teamVM.teamListVM!.avgPointMax())
                            MyProgressView(teamVM: teamVM, titleName: "Free Throws Made", progress: Double(teamStat.ownRecord.average.freeThrowsMade), maxProgressValue: teamVM.teamListVM!.freeThrowsMadeMax())
                            MyProgressView(teamVM: teamVM, titleName: "Free Three FG(%)", progress: teamStat.ownRecord.total.freeThrowsPct * 100, maxProgressValue: teamVM.teamListVM!.freeThrowsPctMax())
                            MyProgressView(teamVM: teamVM, titleName: "Bench Points", progress: teamStat.ownRecord.average.benchPoints, maxProgressValue: teamVM.teamListVM!.benchPointsMax())
                            MyProgressView(teamVM: teamVM, titleName: "Offensive Rebounds", progress: teamStat.ownRecord.average.offRebounds, maxProgressValue: teamVM.teamListVM!.offReboundsMax())
                        }
                        Group{
                            
                            MyProgressView(teamVM: teamVM, titleName: "Deffensive Rebounds", progress: teamStat.ownRecord.average.defRebounds, maxProgressValue: teamVM.teamListVM!.defReboundsMax())
                            MyProgressView(teamVM: teamVM, titleName: "Assists", progress: teamStat.ownRecord.average.assists, maxProgressValue: teamVM.teamListVM!.assistsMax())
                            MyProgressView(teamVM: teamVM, titleName: "Steals", progress: teamStat.ownRecord.average.steals, maxProgressValue: teamVM.teamListVM!.stealsMax())
                            MyProgressView(teamVM: teamVM, titleName: "Blocks", progress: teamStat.ownRecord.average.blocks, maxProgressValue: teamVM.teamListVM!.blocksMax())
                            MyProgressView(teamVM: teamVM, titleName: "Turnover", progress: teamVM.teamListVM!.turnoverMin(), maxProgressValue: teamStat.ownRecord.average.turnovers)
                            MyProgressView(teamVM: teamVM, titleName: "True Shooting Percentage", progress: teamStat.ownRecord.total.trueShootingPct * 100, maxProgressValue: teamVM.teamListVM!.trueShootingPct())
                            
                        }
                    }
                }
            }
        }
    }
    
}



struct TeamRecordDetail_Previews: PreviewProvider {
    static var previews: some View {
        TeamRecordDetails(teamVM: testTeamVM)
    }
}



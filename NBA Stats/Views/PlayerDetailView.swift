//
//  PlayerDetailView.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-06-05.
//

import SwiftUI

struct PlayerDetailView: View {
    
    @State var player: TeamSeasonalStats.Players
    
    var gridItems : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())]
    
    var body: some View {
        
        VStack(alignment: .center) {
            Image(systemName: "person.circle")
                .font(Font.system(size: 40, weight: .bold))
                .padding(.top)
            Text("\(player.firstName) \(player.lastName)")
                .font(Font.system(size: 20, weight: .semibold))
            HStack{
                if player.jerseyNumber != nil {
                    Text("No. \(player.jerseyNumber!)")
                } else {
                    Text("")
                    
                }
                Text("\(player.position)")
                    .padding(.horizontal)
            }
            .foregroundColor(.systemGray)
            .font(.headline)
            
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 15) {
                    PlayerStatView(playerStat: String(player.average.points), title: "AVG Points")
                    PlayerStatView(playerStat: String(player.average.blocks), title: "AVG Block")
                    PlayerStatView(playerStat: String(player.average.assists), title: "AVG Assists")
                    PlayerStatView(playerStat: String(player.average.fieldGoalsMade), title: "AVG FG")
                    PlayerStatView(playerStat: String(player.average.minutes), title: "AVG Mins")
                    PlayerStatView(playerStat: String(player.average.rebounds), title: "AVG REB")
                    PlayerStatView(playerStat: String(player.total.fieldGoalsPct), title: "FG %")
                    PlayerStatView(playerStat: String(player.average.turnovers), title: "AVG TOV")
                    PlayerStatView(playerStat: String(player.average.personalFouls), title: "AVG Fouls")
                    
                }
                .padding(.all, 10)
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                
            }
            
            Spacer()
        }
    }
    //        HStack {
    //            Image(systemName: "person.circle")
    //                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    //                .padding(10)
    //            VStack(alignment: .leading){
    //                Text("\(player.fullName)")
    //
    
    //
    //            Spacer()
    //        }
    
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(player: myPlayer)
    }
}

struct PlayerStatView: View {
    
    @State var playerStat: String
    @State var title: String
    
    var body: some View {
        VStack{
            Text(title)
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            Text(playerStat)
                .font(.headline)
        }
    }
}

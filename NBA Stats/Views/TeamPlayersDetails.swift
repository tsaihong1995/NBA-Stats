//
//  TeamPlayersDetails.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-26.
//

import SwiftUI

struct TeamPlayersListDetails: View {
    
    @ObservedObject var teamVM: TeamViewModel
    @ObservedObject var teamPlayersVM: TeamPlayersViewModel
    
    var body: some View {
        
        if let players = teamPlayersVM.teamPlayers {
            List {
                Section(header: Text("Player List").font(.footnote)) {
                    ForEach(players, id: \.id) { player in
                        
                        NavigationLink(destination: PlayerDetailView(player: player)) {
                            PlayerListRow(player: player)
                        }
                    }
                }
            }
        }
        Text("")
        
    }
}

struct TeamPlayersDetails_Previews: PreviewProvider {
    static var previews: some View {
        TeamPlayersListDetails(teamVM: testTeamVM, teamPlayersVM: myTeamPlayer)
    }
}

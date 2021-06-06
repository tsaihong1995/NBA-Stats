//
//  PlayerListRow.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-26.
//

import SwiftUI

struct PlayerListRow: View {
    
    @State var player: TeamSeasonalStats.Players
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(10)
            VStack(alignment: .leading){
                Text("\(player.fullName)")
                    
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
                .font(.caption2)
            }
            
            Spacer()
        }
        
    }
}

struct PlayerListRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListRow(player: myPlayer)
    }
}

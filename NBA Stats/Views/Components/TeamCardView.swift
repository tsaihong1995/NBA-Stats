//
//  ContentView.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import SwiftUI

struct TeamCardView: View {
    
    @State var teamVM : TeamViewModel
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10, style: .circular)
            .frame(width: UIScreen.main.bounds.width-30, height: 120)
            .foregroundColor(Color(UIColor.systemGray5))
            .overlay(VStack(spacing: 5) {
                HStack {
                    VStack(spacing: 5){
                        Text("W - L")
                        Text("\(teamVM.team.wins) - \(teamVM.team.losses)")
                    }
                    .font(.footnote)
                    .frame(width: 95, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack {
                        Image("\(teamVM.team.id)")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal, 40)
                        Text("\(teamVM.team.name)")
                            .font(.callout)
                            .fontWeight(.medium)
                            .offset(y: -5)
                        Text("Win: \(teamVM.team.wins) Loss: \(teamVM.team.losses)")
                            .font(.footnote)
                    }
                    
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5){
                        if let conference = teamVM.conference {
                            Text("No. \(teamVM.team.calcRank.confRank) @ \(String(conference.name.prefix(4)))")
                            Text("STK: \(teamVM.team.streak.kind.rawValue.capitalized)-\(teamVM.team.streak.length)")
                            
                        }
                    }
                    .frame(width: 95, alignment: .center)
                    .font(.footnote)
                }
                
                
            })
        
        
        
    }
}

struct TeamCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TeamCardView(teamVM: TeamViewModel(team: myTeam, conference: myConference))
            
            
            TeamCardView(teamVM: TeamViewModel(team: myTeam, conference: myConference))
                .previewLayout(.sizeThatFits)
                .padding()
                .colorScheme(.dark)
        }
        
        
    }
}

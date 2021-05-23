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
                    .frame(width: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                    
                    VStack(spacing: 5){
                        Text("No. \(teamVM.team.calcRank.divRank)")
                        Text("STK: \(teamVM.team.streak.kind.rawValue)-\(teamVM.team.streak.length)")
                        
                    }
                    .frame(width: 90, alignment: .center)
                    .font(.footnote)
                }

                
//                HStack {
//                    Text("Upcoming Game:")
//                        .font(.caption)
//                        .fontWeight(.semibold)
//                    Spacer()
//                }
                
            })
        .shadow(color: Color.gray.opacity(0.7), radius: 3)
        
        
    }
}

struct TeamCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TeamCardView(teamVM: TeamViewModel(team: myTeam))
                
        
            TeamCardView(teamVM: TeamViewModel(team: myTeam))
                .previewLayout(.sizeThatFits)
                .padding()
                .colorScheme(.dark)
        }
        
        
    }
}

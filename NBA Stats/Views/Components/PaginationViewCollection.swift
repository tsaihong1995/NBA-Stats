//
//  ContentView.swift
//  TestCollectionView
//
//  Created by Hung-Chun Tsai on 2021-05-21.
//

import SwiftUI
import SwiftUIX


struct PaginationViewCollection: View {
    
    @ObservedObject var teamVM: TeamViewModel
    @ObservedObject var teamPlayersVM: TeamPlayersViewModel
    
    @State private var currentPage = 0
    @State var barOffset: CGFloat = 0
    @State var showCapsule = false
    
    var body: some View {
        
        VStack{
            TeamCardView(teamVM: teamVM)
                .padding(.top)
            TabBar(currentIndex: $currentPage)
            PaginationView(axis: .horizontal) {
                TeamRecordDetails(teamVM: teamVM)
                TeamPlayersListDetails(teamVM: teamVM, teamPlayersVM: teamPlayersVM)
            }
            .currentPageIndex($currentPage)
        }
        .listStyle(GroupedListStyle())
        
        //.navigationBarHidden(true)
        
        
        
        
    }
}



struct PaginationViewCollection_Previews: PreviewProvider {
    static var previews: some View {
        PaginationViewCollection(teamVM: testTeamVM, teamPlayersVM: myTeamPlayer)
    }
}

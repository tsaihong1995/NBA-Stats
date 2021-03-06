//
//  UserHomeView.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import SwiftUI

struct UserHomeView: View {
    
    @StateObject private var teamListVM = TeamListViewModel()
    @State private var presentingSheet = false
    
    var body: some View {
        NavigationView {
            Group{
                if teamListVM.faviores.isEmpty {
                    VStack{
                        Image("emptyState")
                            .resizable()
                            .scaledToFit()
                        Button(action: {
                            presentingSheet = true
                        }, label: {
                            Text("Press here to start")
                        })
                    }

                    
                } else {
                    List(teamListVM.faviores, id: \.id) { team in
                        ZStack {
                            TeamCardView(teamVM: team)
                            NavigationLink(
                                destination: PaginationViewCollection(teamVM: team, teamPlayersVM: TeamPlayersViewModel(teamVM: team))
                                            .navigationBarTitle(Text("\(team.team.name)"), displayMode: .inline)
                            ) {
                              EmptyView()
                            }
                        }
                        
                    }
                    .listStyle(PlainListStyle())
                }
            }
            .navigationTitle(Text("Your Teams"))
            .toolbar {
                
                    Button(action: {
                        self.presentingSheet = true
                    }) {
                        Image(systemName: "plus")
                    }
                
            }
            .sheet(isPresented: $presentingSheet) {
                SelectTeamsView(teamListVM: teamListVM)
                    .padding(.top)
            }
        }//: Navigation View
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

struct UserHomeView_Previews: PreviewProvider {
    static var previews: some View {
        UserHomeView()
    }
}

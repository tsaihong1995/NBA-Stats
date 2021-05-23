//
//  SelectTeamsView.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import SwiftUI

struct SelectTeamsView: View {
    
    var gridItems : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())]
    
    @State private var searchText = ""
    @State private var selectedTeam = [String]()
    
    @ObservedObject var teamListVM : TeamListViewModel
    @Environment(\.presentationMode) var presentation
    
    
    var body: some View {
        
        VStack{
            SearchBar(text: $searchText)
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 15) {
                    ForEach(TeamName.sorted(by: <).filter({searchText.isEmpty ? true : $0.value.contains(searchText)}), id: \.key) { key, value in
                        CustomButton(teamName: [key:value], selectedTeams: $selectedTeam, teamListVM: teamListVM)
                        }
                    
                }
                .padding(.all, 10)
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                
            }
            VStack {
                Button(action: {
                    addToFavorite()
                }) {
                    Text("Confirm")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 300)
                        .background(Color.init(.systemIndigo))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                .ignoresSafeArea(.all)
            }
        }
    }
    
    func addToFavorite() {
        
        teamListVM.faviores.removeAll()
        
        for team in teamListVM.teams {
            if selectedTeam.contains(team.team.id) {
                teamListVM.faviores.append(team)
            }

        }
        
        presentation.wrappedValue.dismiss()
    }
}

var selectedEffect: some View {
    Image(systemName: "checkmark")
    .font(Font.system(size: 50, weight: .semibold))
    .foregroundColor(.green)
}

var noneSelectedEffect: some View {
    EmptyView()
}


struct CustomButton: View {
    
    @State private var isSelected: Bool = false
    @State var teamName: [String:String]
    @Binding var selectedTeams: [String]
    @ObservedObject var teamListVM : TeamListViewModel
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
            if isSelected {
                selectedTeams.append(Array(teamName)[0].key)
            } else {
                if let index = selectedTeams.firstIndex(of: Array(teamName)[0].key) {
                    selectedTeams.remove(at: index)
                }
            }
        }) {
            VStack{
                ZStack{
                    Image("\(Array(teamName)[0].key)")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                    Image(systemName: "checkmark")
                    .font(Font.system(size: 50, weight: .semibold))
                    .foregroundColor(.green)
                    .opacity(isSelected == true ? 1 : 0)
                }
                Text("\(Array(teamName)[0].value)")
                    .foregroundColor(.black)
            }
        }
        .onAppear {
            
            //Check Favorite Teams
            for favoriteTeam in teamListVM.faviores {
                if (favoriteTeam.team.id == Array(teamName)[0].key) {
                    isSelected = true
                }
            }
        }
        
        
    }
    
}



struct SelectTeamsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTeamsView(teamListVM: TeamListViewModel())
    }
}

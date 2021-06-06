//
//  ProgressView.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-23.
//

import SwiftUI

struct MyProgressView: View {
    @State var teamVM: TeamViewModel
    
    @State var titleName: String = "Default Title"
    @State var progress: Double = 1.0
    @State var maxProgressValue: Double = 100.0
    var body: some View {
        VStack {
            
            if teamVM.teamListVM != nil {
                
            }
            
            ProgressView(titleName, value: progress, total: maxProgressValue)
                .progressViewStyle(LinearProgressViewStyle())
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
            
            HStack{
                Text("\(String(format: "%.2f", progress))")
                Spacer()
                Text("\(String(format: "%.2f", maxProgressValue))")
            }
            .font(.footnote)
        }
        .padding(.horizontal)
        .padding(.vertical, 2)
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        MyProgressView(teamVM: testTeamVM)
    }
}

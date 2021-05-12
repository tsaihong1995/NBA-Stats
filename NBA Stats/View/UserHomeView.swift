//
//  UserHomeView.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import SwiftUI

struct UserHomeView: View {
    var body: some View {
        
        NavigationView {
            List(1 ..< 5) { number in
                NavigationLink(destination: Text("Detail")) {
                    TeamCardView()
                }
                
            }
            .navigationBarHidden(true)
        }
        

        

    }
}

struct UserHomeView_Previews: PreviewProvider {
    static var previews: some View {
        UserHomeView()
    }
}

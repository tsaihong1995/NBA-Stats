//
//  TabViewHome.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-14.
//

import SwiftUI

struct TabViewHome: View {
    var body: some View {
        TabView {
            UserHomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            Text("Categories").tabItem {
                Image(systemName: "list.bullet.indent")
                Text("Categories")
            }
            Text("Favorite").tabItem {
                Image(systemName: "heart")
                Text("Favorites")
            }
            Text("More").tabItem {
                Image(systemName: "ellipsis")
                Text("More")
            }
        }
    }
}

struct TabViewHome_Previews: PreviewProvider {
    static var previews: some View {
        TabViewHome()
    }
}

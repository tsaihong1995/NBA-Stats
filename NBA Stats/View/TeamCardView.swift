//
//  ContentView.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import SwiftUI

struct TeamCardView: View {
    var body: some View {
        GroupBox {
            VStack(spacing: 5) {
                HStack {
                    VStack{
                        Text("W - L")
                        Text("123")
                    }
                    .font(.caption2)
                    .frame(width: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Image("1")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal)
                    VStack{
                        Text("No.12 (East)")
                        Text("Streak: 3")
                    }
                    .frame(width: 75, alignment: .center)
                    .font(.system(size: 10))
                }
                Text("Team Name")
                    .font(.footnote)
                    .fontWeight(.medium)
                
//                HStack {
//                    Text("Upcoming Game:")
//                        .font(.caption)
//                        .fontWeight(.semibold)
//                    Spacer()
//                }
                
            }
        }//-: GroupBox
        .padding(.horizontal)
        
        
    }
}

struct TeamCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TeamCardView()
                .previewLayout(.sizeThatFits)
                .padding()
        
            TeamCardView()
                .previewLayout(.sizeThatFits)
                .padding()
                .colorScheme(.dark)
        }
        
        
    }
}

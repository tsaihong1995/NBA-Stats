//
//  ContentView.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import SwiftUI

struct TeamCardView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10, style: .circular)
            .frame(width: UIScreen.main.bounds.width-30, height: 100)
            .foregroundColor(Color(UIColor.systemGray5))
            .overlay(VStack(spacing: 5) {
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
                        .padding(.horizontal, 40)
                    VStack{
                        Text("No.12 (East)")
                        Text("STRK: 3")
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
                
            })
        .shadow(color: Color.gray.opacity(0.4), radius: 5)
        
        
    }
}

struct TeamCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TeamCardView()
                
        
            TeamCardView()
                .previewLayout(.sizeThatFits)
                .padding()
                .colorScheme(.dark)
        }
        
        
    }
}

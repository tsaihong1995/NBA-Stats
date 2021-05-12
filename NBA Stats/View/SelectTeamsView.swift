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
    
    var body: some View {
        
        VStack{
            SearchBar(text: $searchText)
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 15) {
                    ForEach(TeamName.sorted(by: <).filter({searchText.isEmpty ? true : $0.value.contains(searchText)}), id: \.key) { key, value in
                        CustomButton(teamName: [key:value])
                        }
                    
                }
                .padding(.all, 10)
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                
            }
            bottombar
        }
        
        
        
        
        
        
        
    }
}

struct CustomButton: View {
    
    @State private var isSelected: Bool = false
    @State var teamName: [Int:String]
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
        }) {
            
            VStack{
                Image("\(Array(teamName)[0].key)")
                    .resizable()
                    .frame(width: 70, height: 70, alignment: .center)
                    .overlay( isSelected == true ?
                                Image(systemName: "checkmark")
                                .font(Font.system(size: 50, weight: .semibold))
                                .foregroundColor(.green): Image(systemName: "checkmark.circle")
                                .font(Font.system(size: 0))
                                .foregroundColor(.purple))
                Text("\(Array(teamName)[0].value)")
                    .foregroundColor(.black)
            }
        }
        
    }
}

var bottombar: some View {
    VStack {
        Button(action: {
            
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

struct SelectTeamsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTeamsView()
    }
}

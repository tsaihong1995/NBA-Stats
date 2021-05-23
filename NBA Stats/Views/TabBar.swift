//
//  TabBar.swift
//  Chanel (iOS)
//
//  Created by Balaji on 04/02/21.
//

import SwiftUI

var tabs = ["Home","Search","Account"]

struct TabBar: View {
    
    @Binding var currentIndex: Int
    @Binding var offset: CGFloat
    @Binding var showCapsule: Bool
    @State var width : CGFloat = 0
    
    var body: some View {
        
        GeometryReader{proxy -> AnyView in
            
            // Equal Width...
            let equalWidth = proxy.frame(in: .global).width / CGFloat(tabs.count)
            
            DispatchQueue.main.async {
                self.width = equalWidth
            }
            
            return AnyView(
            
                ZStack(alignment: .bottomLeading, content: {
                    
                    Capsule()
                        .fill(Color.green)
                        .frame(width: equalWidth - 15, height: showCapsule ? 40 : 4)
                        .offset(x: getOffset() + 7)
                        //.animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                        
                    HStack(spacing: 0){
                        
                        ForEach(tabs.indices,id: \.self){index in
                            
                            Text(tabs[index])
                                .fontWeight(.bold)
                                .foregroundColor(showCapsule ? (getIndexFromOffset() == CGFloat(index) ? .black : .white) : .white)
                                .frame(width: equalWidth, height: 40)
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    self.currentIndex = index
                                    // Setting Offset....
                                    withAnimation{
                                        
                                        offset = UIScreen.main.bounds.width * CGFloat(index)
                                    }
                                }
                        }
                        
                    }
                    
                    
                })
                .frame(maxWidth: .infinity,maxHeight: 30, alignment: .center)
                
            )
        }
        .padding()
        .frame(height: 40)
    }
    
    // Calculating Offset...
    
    func getOffset()->CGFloat{
        
        let progress = offset / UIScreen.main.bounds.width
        
        return progress * width
    }
    
    func getIndexFromOffset()->CGFloat{
        
        let indexFloat = offset / UIScreen.main.bounds.width
        
        return indexFloat.rounded(.toNearestOrAwayFromZero)
    }
}


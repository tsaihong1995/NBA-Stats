//
//  TabBar.swift
//  Chanel (iOS)
//
//  Created by Balaji on 04/02/21.
//

import SwiftUI

var tabs = ["Team","Player"]

struct TabBar: View {
    
    @Binding var currentIndex: Int
    @State var offset: CGFloat = 0
    @State var width : CGFloat = 0
    
    var body: some View {
        
        GeometryReader{proxy -> AnyView in
            
            let equalWidth = proxy.frame(in: .global).width / CGFloat(tabs.count)
            
            DispatchQueue.main.async {
                self.width = equalWidth
            }
            
            return AnyView(
            
                ZStack(alignment: .bottomLeading, content: {
                    
                    Capsule()
                        .fill(Color.green)
                        .frame(width: equalWidth - 15, height: 4)
                        .offset(x: getOffset() + 10)

                    HStack(spacing: 0){
                        ForEach(tabs.indices,id: \.self){index in
                            Text(tabs[index])
                                .font(.caption)
                                .fontWeight(.medium)
                                .frame(width: equalWidth, height: 40)
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    self.currentIndex = index
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
        .padding(.horizontal)
        .frame(height: 40)
    }
    
    // Calculating Offset...
    
    func getOffset()->CGFloat{
        
        _ = offset / UIScreen.main.bounds.width
        
        return CGFloat(currentIndex) * width
    }
}


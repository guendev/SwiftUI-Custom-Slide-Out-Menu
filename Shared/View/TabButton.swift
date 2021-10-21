//
//  TabButton.swift
//  Custom Slide Out Menu
//
//  Created by Yuan on 21/10/2021.
//

import SwiftUI

struct TabButton: View {
    
    var image: String
    var title: String
    
    @Binding var selectedTab: String
    var aimation: Namespace.ID
    
    var body: some View {
        
        Button {
            
            withAnimation(.spring()) { 
                self.selectedTab = image
            }
            
        } label: {
            
            HStack(spacing: 10) {
                
                Image(systemName: image)
                    .frame(width: 30)
                    .font(.title2)
                
                Text(title)
                    .fontWeight(.semibold)
                
            }
            .foregroundColor(selectedTab == image ? Color("blue") : Color.white)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .frame(maxWidth: getRect().width - 170, alignment: .leading)
            .background(
                
                // Hero animatioion
                
                ZStack {
                    
                    if selectedTab == image {
                        Color.white.opacity(selectedTab == image ? 1 : 0)
                            .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 12))
                            .matchedGeometryEffect(id: "Tab", in: aimation)
                    }
                    
                }
                
                
            )
            
        }
        
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

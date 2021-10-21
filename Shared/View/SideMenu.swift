//
//  SideMenu.swift
//  Custom Slide Out Menu
//
//  Created by Yuan on 21/10/2021.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        
        // Side Menu
        VStack(alignment: .leading, spacing: 15) {
            
            // Profile
            Image("profile")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .cornerRadius(10)
                .padding(.top, 50)
            
            VStack(alignment: .leading, spacing: 6) {
                
                Text("Nguyên Trần")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button {
                    
                    
                } label: {
                    
                    Text("View Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                    
                }
                
                // tab Buttons
                VStack(alignment: .leading,spacing: 15) {
                    
                    TabButton(image: "house", title: "Home", selectedTab: $selectedTab, aimation: animation)
                    
                    TabButton(image: "clock.arrow.circlepath", title: "Histories", selectedTab: $selectedTab, aimation: animation)
                    
                    TabButton(image: "bell.badge", title: "Notifications", selectedTab: $selectedTab, aimation: animation)
                    
                    TabButton(image: "gearshape.fill", title: "Settings", selectedTab: $selectedTab, aimation: animation)
                    
                    TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, aimation: animation)
                    
                }
                .padding(.leading, -15)
                .padding(.top, 50)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 8) {
                                            
                    TabButton(image: "arrow.right", title: "Log Out", selectedTab: .constant(""), aimation: animation)
                        .padding(.leading, -15)
                    
                    Text("App version 1.2.34")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.8)
                    
                }
                
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        
    }
}

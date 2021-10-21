//
//  Home.swift
//  Custom Slide Out Menu
//
//  Created by Yuan on 21/10/2021.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    
    // Hiding Tab Bar...
    init(selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        // Tab View With Tabs...
        TabView(selection: $selectedTab){
            
            // Views...
            HomePage()
                .tag("house")
            
            History()
                .tag("clock.arrow.circlepath")
            
            Settings()
                .tag("questionmark.circle")
            
            Help()
                .tag("gearshape.fill")
            
            Notifications()
                .tag("bell.badge")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// All Sub Views....

struct HomePage: View {
    
    var body: some View{
        
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading,spacing: 20){
                
                    Image("pic")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: getRect().width - 50, height: 400)
                        .cornerRadius(20)
                    
                    VStack(alignment: .leading, spacing: 5, content: {
                        
                        Text("Yuan")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("iJustine's Sister, YoutTuber ,Techie....")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                    })
                }
                
            }
            .navigationTitle("Home")
        }
    }
}

struct History: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}

struct Notifications: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notifications")
        }
    }
}

struct Settings: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct Help: View {
    
    var body: some View{
        
        NavigationView{
            
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}

